
# MIT License

# Copyright (c) 2020 Jean-Jacques François Reibel

# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:

# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

import strformat
type Car = object
  wheels: int
  doors: int
  cylinders: int

proc addWheels(myCar: var Car, wheelsIn: int) = 
  let val = (myCar.wheels + wheelsIn)
  myCar.wheels = val

proc addDoors(myCar: var Car, doorsIn: int) = 
  let val = (myCar.doors + doorsIn)
  myCar.doors = val

proc addCylinders(myCar: var Car, cylindersIn: int) = 
  let val = (myCar.cylinders + cylindersIn)
  myCar.cylinders = val

proc deleteWheels(myCar: var Car, wheelsIn: int) = 
  let val = (myCar.wheels - wheelsIn)
  myCar.wheels = val

proc deleteDoors(myCar: var Car, doorsIn: int) = 
  let val = (myCar.doors - doorsIn)
  myCar.doors = val

proc deleteCylinders(myCar: var Car, cylindersIn: int) = 
  let val = (myCar.cylinders - cylindersIn)
  myCar.cylinders = val

proc printParts(myCar: var Car) = 
  echo fmt"Wheel check: {myCar.wheels}"
  echo fmt"Door check: {myCar.doors}"
  echo fmt"Cylinder check: {myCar.cylinders}"
  echo "\n"

echo "Creating car."
var subaru = Car(wheels:4, doors:4, cylinders:4)
printParts(subaru)
echo "Adding wheel directly to car object."
subaru.wheels = 5
printParts(subaru)
echo "Removing wheel using object method."
deleteWheels(subaru, 1)
printParts(subaru)
