%module Bullet
 %{
 /* Includes the header in the wrapper code */
#include "btBulletDynamicsCommon.h"
 %}
 
 /* Parse the header file to generate wrappers */
 %include "btBulletDynamicsCommon.h"
