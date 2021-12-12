import pytest
from advent_of_code import solve

def just_for_type_checking(year: int, day: int, part: int, input: str) -> str:
    "mypy detects type errors if changing the above"
    return solve(year, day, part, input)


def test_version():
    assert solve(2019, 1, 1, "14") == "2"
    assert solve(2019, 3, 2, "R8,U5,L5,D3\nU7,R6,D4,L4") == "30"

    with pytest.raises(ValueError) as excinfo:
        solve(2019, 1, 1, "")
    assert "Empty input" == str(excinfo.value)

    with pytest.raises(ValueError) as excinfo:
        solve(2019, 1, 1, "ö")
    assert "Non-ASCII input" == str(excinfo.value)

    with pytest.raises(ValueError) as excinfo:
        solve(2019, 1, 1, "hello")
    assert "Line 1: Invalid digit found in string" == str(excinfo.value)
