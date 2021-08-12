from calculations.type_checks import *


def test_is_integer():
    assert is_integer(3)
    assert not is_integer(3.0)
    assert not is_integer('a')

def test_is_float():
    assert is_float(1.0)
    assert not is_float(1)
    assert not is_float('a')

# def test_is_float_bugged():
#     assert not is_float(1.0)
#     assert not is_float(1)
#     assert not is_float('a')