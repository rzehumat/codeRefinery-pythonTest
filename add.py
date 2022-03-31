from pytest import approx

def add(a, b):
    return a + b


def test_add():
    assert add(2, 3) == 5
    assert add('space', 'ship') == 'spaceship'
    
    result = add(0.1, 0.2)
    # not good for small values, i.e. if result approx 1e-9
    assert abs(result-0.3) < 1e-7
    
    # more robust
    assert add(0.1, 0.2) == approx(0.3)
    # bad example
    # assert add(0.1, 0.2) == 0.3


def subtract(a, b):
    return a-b

def test_subtract():
    assert subtract(2, 3) == -1
