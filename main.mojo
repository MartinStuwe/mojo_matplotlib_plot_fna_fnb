from python.object import PythonObject
from python import Python
from math import sqrt

def fna():
    var v1 = SIMD[DType.float32, 16](-3, -2.5, -2.0, -1.5, -1.0, -0.5,
    	     			     0.0, 0.5, 1.0, 1.5, 2.0, 2.5, 3.0)

    var v2 = (v1 * v1) + 1

    print(v2)

    var python_x_array = Python.evaluate("[-0.5 * x for x in range(-6, 7)]")
    var python_y_array = PythonObject([])
    for i in range(13):
    	python_y_array.append(v2.__getitem__(i))

    let pyplot = Python.import_module("matplotlib.pyplot")
    
    pyplot.plot(python_x_array, python_y_array)
    pyplot.show()



def fnb():
    var v1 = SIMD[DType.float32, 16](-3, -2.5, -2.0, -1.5, -1.0, -0.5,
    	     			     0.0, 0.5, 1.0, 1.5, 2.0, 2.5, 3.0)

    var v2 = sqrt(4 - v1 * v1)

    print(v2)

    var python_x_array = Python.evaluate("[-0.5 * x for x in range(-6, 7)]")
    var python_y_array = PythonObject([])
    for i in range(13):
    	python_y_array.append(v2.__getitem__(i))

    let pyplot = Python.import_module("matplotlib.pyplot")
    
    pyplot.plot(python_x_array, python_y_array)
    pyplot.show()


def main():
    
    fna()
    fnb()