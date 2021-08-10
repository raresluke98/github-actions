from calculations.type_checks import is_integer


def test_is_integer():
    assert is_integer(3)
    assert not is_integer(3.0)
    assert not is_integer('a')