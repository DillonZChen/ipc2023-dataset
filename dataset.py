import json
import os
from typing import List, Optional
from dataclasses import dataclass


@dataclass
class Domain:
    name: str
    numeric: str
    effects: str


@dataclass
class Problem:
    domain_name: str
    domain_name_with_effect: str
    problem_name: str
    domain_pddl: str
    problem_pddl: str


_BENCHMARKS = []

_PROBLEMS = []

_DOMAIN_TO_PROBLEMS = {}

_DOMAIN_TO_INFO = {}


def get_domains() -> List[str]:
    return [domain.name for domain in _BENCHMARKS]


def get_domain_names_with_effect() -> List[str]:
    return [
        f"{domain.name} ({domain.effects[0].upper()})"
        for domain in _BENCHMARKS
    ]

def get_domain_info(domain: str):
    return _DOMAIN_TO_INFO[domain]

def get_problems(domain: Optional[str] = None) -> List[Problem]:
    if domain is None:
        return _PROBLEMS
    else:
        return _DOMAIN_TO_PROBLEMS[domain]


def num_problems(domain: Optional[str] = None) -> int:
    return len(get_problems(domain))


def _init_variables() -> None:
    for domain_obj in json.load(open("benchmarks/info.json"))["domains"]:
        benchmark = Domain(**domain_obj)
        domain = benchmark.name
        _BENCHMARKS.append(benchmark)
        _DOMAIN_TO_PROBLEMS[domain] = []

    for benchmark in _BENCHMARKS:
        domain = benchmark.name

        _DOMAIN_TO_INFO[domain] = {
            "effects": benchmark.effects,
            "numeric": benchmark.numeric,
        }

        desc = benchmark.effects
        domain_dir = f"benchmarks/{domain}"
        df = f"{domain_dir}/domain.pddl"
        assert os.path.exists(df)
        problem_dir = f"{domain_dir}/instances"
        for file in sorted(os.listdir(problem_dir)):
            pf = f"{problem_dir}/{file}"
            assert os.path.exists(pf)
            problem = Problem(
                domain_name=domain,
                domain_name_with_effect=f"{domain} ({desc[0].upper()})",
                problem_name=os.path.basename(pf).replace(".pddl", ""),
                domain_pddl=df,
                problem_pddl=pf,
            )
            _PROBLEMS.append(problem)
            _DOMAIN_TO_PROBLEMS[domain].append(problem)


_init_variables()
