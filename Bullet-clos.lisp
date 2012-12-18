
(cl:defclass bt-vector3()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod (cl:setf m_floats) (arg0 (obj bt-vector3))
  (btVector3_m_floats_set (ff-pointer obj) arg0))

(cl:defmethod m_floats ((obj bt-vector3))
  (btVector3_m_floats_get (ff-pointer obj)))

(cl:defmethod initialize-instance :after ((obj bt-vector3) &key)
  (setf (slot-value obj 'ff-pointer) (new_btVector3)))

(cl:defmethod initialize-instance :after ((obj bt-vector3) &key x y z)
  (setf (slot-value obj 'ff-pointer) (new_btVector3 x y z)))

(cl:shadow "+=")
(cl:defmethod += ((self bt-vector3) (v bt-vector3))
  (btVector3___add_assign__ (ff-pointer self) (ff-pointer v)))

(cl:shadow "-=")
(cl:defmethod -= ((self bt-vector3) (v bt-vector3))
  (btVector3___sub_assign__ (ff-pointer self) (ff-pointer v)))

(cl:shadow "*=")
(cl:defmethod *= ((self bt-vector3) s)
  (btVector3___mul_assign__ (ff-pointer self) s))

(cl:shadow "/=")
(cl:defmethod /= ((self bt-vector3) s)
  (btVector3___div_assign__ (ff-pointer self) s))

(cl:defmethod dot ((self bt-vector3) (v bt-vector3))
  (btVector3_dot (ff-pointer self) (ff-pointer v)))

(cl:defmethod length2 ((self bt-vector3))
  (btVector3_length2 (ff-pointer self)))

(cl:defmethod length ((self bt-vector3))
  (btVector3_length (ff-pointer self)))

(cl:defmethod distance2 ((self bt-vector3) (v bt-vector3))
  (btVector3_distance2 (ff-pointer self) (ff-pointer v)))

(cl:defmethod distance ((self bt-vector3) (v bt-vector3))
  (btVector3_distance (ff-pointer self) (ff-pointer v)))

(cl:defmethod safe-normalize ((self bt-vector3))
  (btVector3_safeNormalize (ff-pointer self)))

(cl:defmethod normalize ((self bt-vector3))
  (btVector3_normalize (ff-pointer self)))

(cl:defmethod normalized ((self bt-vector3))
  (btVector3_normalized (ff-pointer self)))

(cl:defmethod rotate ((self bt-vector3) (wAxis bt-vector3) (angle cl:number))
  (btVector3_rotate (ff-pointer self) (ff-pointer wAxis) angle))

(cl:defmethod angle ((self bt-vector3) (v bt-vector3))
  (btVector3_angle (ff-pointer self) (ff-pointer v)))

(cl:defmethod absolute ((self bt-vector3))
  (btVector3_absolute (ff-pointer self)))

(cl:defmethod cross ((self bt-vector3) (v bt-vector3))
  (btVector3_cross (ff-pointer self) (ff-pointer v)))

(cl:defmethod triple ((self bt-vector3) (v1 bt-vector3) (v2 bt-vector3))
  (btVector3_triple (ff-pointer self) (ff-pointer v1) (ff-pointer v2)))

(cl:defmethod min-axis ((self bt-vector3))
  (btVector3_minAxis (ff-pointer self)))

(cl:defmethod max-axis ((self bt-vector3))
  (btVector3_maxAxis (ff-pointer self)))

(cl:defmethod furthest-axis ((self bt-vector3))
  (btVector3_furthestAxis (ff-pointer self)))

(cl:defmethod closest-axis ((self bt-vector3))
  (btVector3_closestAxis (ff-pointer self)))

(cl:defmethod set-interpolate3 ((self bt-vector3) (v0 bt-vector3) (v1 bt-vector3) (rt cl:number))
  (btVector3_setInterpolate3 (ff-pointer self) (ff-pointer v0) (ff-pointer v1) rt))

(cl:defmethod lerp ((self bt-vector3) (v bt-vector3) t-arg2)
  (btVector3_lerp (ff-pointer self) (ff-pointer v) t-arg2))

(cl:shadow "*=")
(cl:defmethod *= ((self bt-vector3) (v bt-vector3))
  (btVector3___mul_assign__ (ff-pointer self) (ff-pointer v)))

(cl:defmethod get-x ((self bt-vector3))
  (btVector3_getX (ff-pointer self)))

(cl:defmethod get-y ((self bt-vector3))
  (btVector3_getY (ff-pointer self)))

(cl:defmethod get-z ((self bt-vector3))
  (btVector3_getZ (ff-pointer self)))

(cl:defmethod set-x ((self bt-vector3) (x cl:number))
  (btVector3_setX (ff-pointer self) x))

(cl:defmethod set-y ((self bt-vector3) (y cl:number))
  (btVector3_setY (ff-pointer self) y))

(cl:defmethod set-z ((self bt-vector3) (z cl:number))
  (btVector3_setZ (ff-pointer self) z))

(cl:defmethod set-w ((self bt-vector3) (w cl:number))
  (btVector3_setW (ff-pointer self) w))

(cl:defmethod x ((self bt-vector3))
  (btVector3_x (ff-pointer self)))

(cl:defmethod y ((self bt-vector3))
  (btVector3_y (ff-pointer self)))

(cl:defmethod z ((self bt-vector3))
  (btVector3_z (ff-pointer self)))

(cl:defmethod w ((self bt-vector3))
  (btVector3_w (ff-pointer self)))

(cl:shadow "==")
(cl:defmethod == ((self bt-vector3) (other bt-vector3))
  (btVector3___eq__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "!=")
(cl:defmethod != ((self bt-vector3) (other bt-vector3))
  (btVector3___ne__ (ff-pointer self) (ff-pointer other)))

(cl:defmethod set-max ((self bt-vector3) (other bt-vector3))
  (btVector3_setMax (ff-pointer self) (ff-pointer other)))

(cl:defmethod set-min ((self bt-vector3) (other bt-vector3))
  (btVector3_setMin (ff-pointer self) (ff-pointer other)))

(cl:defmethod set-value ((self bt-vector3) x y z)
  (btVector3_setValue (ff-pointer self) x y z))

(cl:defmethod get-skew-symmetric-matrix ((self bt-vector3) (v0 bt-vector3) (v1 bt-vector3) (v2 bt-vector3))
  (btVector3_getSkewSymmetricMatrix (ff-pointer self) (ff-pointer v0) (ff-pointer v1) (ff-pointer v2)))

(cl:defmethod set-zero ((self bt-vector3))
  (btVector3_setZero (ff-pointer self)))

(cl:defmethod is-zero ((self bt-vector3))
  (btVector3_isZero (ff-pointer self)))

(cl:defmethod fuzzy-zero ((self bt-vector3))
  (btVector3_fuzzyZero (ff-pointer self)))

(cl:defmethod serialize ((self bt-vector3) dataOut)
  (btVector3_serialize (ff-pointer self) dataOut))

(cl:defmethod de-serialize ((self bt-vector3) dataIn)
  (btVector3_deSerialize (ff-pointer self) dataIn))

(cl:defmethod serialize-float ((self bt-vector3) dataOut)
  (btVector3_serializeFloat (ff-pointer self) dataOut))

(cl:defmethod de-serialize-float ((self bt-vector3) dataIn)
  (btVector3_deSerializeFloat (ff-pointer self) dataIn))

(cl:defmethod serialize-double ((self bt-vector3) dataOut)
  (btVector3_serializeDouble (ff-pointer self) dataOut))

(cl:defmethod de-serialize-double ((self bt-vector3) dataIn)
  (btVector3_deSerializeDouble (ff-pointer self) dataIn))


(cl:defclass bt-vector4(btVector3)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-vector4) &key)
  (setf (slot-value obj 'ff-pointer) (new_btVector4)))

(cl:defmethod initialize-instance :after ((obj bt-vector4) &key x y z w)
  (setf (slot-value obj 'ff-pointer) (new_btVector4 x y z w)))

(cl:defmethod absolute4 ((self bt-vector4))
  (btVector4_absolute4 (ff-pointer self)))

(cl:defmethod get-w ((self bt-vector4))
  (btVector4_getW (ff-pointer self)))

(cl:defmethod max-axis4 ((self bt-vector4))
  (btVector4_maxAxis4 (ff-pointer self)))

(cl:defmethod min-axis4 ((self bt-vector4))
  (btVector4_minAxis4 (ff-pointer self)))

(cl:defmethod closest-axis4 ((self bt-vector4))
  (btVector4_closestAxis4 (ff-pointer self)))

(cl:defmethod set-value ((self bt-vector4) x y z w)
  (btVector4_setValue (ff-pointer self) x y z w))


(cl:defclass bt-quad-word()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod get-x ((self bt-quad-word))
  (btQuadWord_getX (ff-pointer self)))

(cl:defmethod get-y ((self bt-quad-word))
  (btQuadWord_getY (ff-pointer self)))

(cl:defmethod get-z ((self bt-quad-word))
  (btQuadWord_getZ (ff-pointer self)))

(cl:defmethod set-x ((self bt-quad-word) (x cl:number))
  (btQuadWord_setX (ff-pointer self) x))

(cl:defmethod set-y ((self bt-quad-word) (y cl:number))
  (btQuadWord_setY (ff-pointer self) y))

(cl:defmethod set-z ((self bt-quad-word) (z cl:number))
  (btQuadWord_setZ (ff-pointer self) z))

(cl:defmethod set-w ((self bt-quad-word) (w cl:number))
  (btQuadWord_setW (ff-pointer self) w))

(cl:defmethod x ((self bt-quad-word))
  (btQuadWord_x (ff-pointer self)))

(cl:defmethod y ((self bt-quad-word))
  (btQuadWord_y (ff-pointer self)))

(cl:defmethod z ((self bt-quad-word))
  (btQuadWord_z (ff-pointer self)))

(cl:defmethod w ((self bt-quad-word))
  (btQuadWord_w (ff-pointer self)))

(cl:shadow "==")
(cl:defmethod == ((self bt-quad-word) (other bt-quad-word))
  (btQuadWord___eq__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "!=")
(cl:defmethod != ((self bt-quad-word) (other bt-quad-word))
  (btQuadWord___ne__ (ff-pointer self) (ff-pointer other)))

(cl:defmethod set-value ((self bt-quad-word) x y z)
  (btQuadWord_setValue (ff-pointer self) x y z))

(cl:defmethod set-value ((self bt-quad-word) x y z w)
  (btQuadWord_setValue (ff-pointer self) x y z w))

(cl:defmethod initialize-instance :after ((obj bt-quad-word) &key)
  (setf (slot-value obj 'ff-pointer) (new_btQuadWord)))

(cl:defmethod initialize-instance :after ((obj bt-quad-word) &key x y z)
  (setf (slot-value obj 'ff-pointer) (new_btQuadWord x y z)))

(cl:defmethod initialize-instance :after ((obj bt-quad-word) &key x y z w)
  (setf (slot-value obj 'ff-pointer) (new_btQuadWord x y z w)))

(cl:defmethod set-max ((self bt-quad-word) (other bt-quad-word))
  (btQuadWord_setMax (ff-pointer self) (ff-pointer other)))

(cl:defmethod set-min ((self bt-quad-word) (other bt-quad-word))
  (btQuadWord_setMin (ff-pointer self) (ff-pointer other)))


(cl:defclass bt-quaternion(btQuadWord)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-quaternion) &key)
  (setf (slot-value obj 'ff-pointer) (new_btQuaternion)))

(cl:defmethod initialize-instance :after ((obj bt-quaternion) &key x y z w)
  (setf (slot-value obj 'ff-pointer) (new_btQuaternion x y z w)))

(cl:defmethod initialize-instance :after ((obj bt-quaternion) &key (axis bt-vector3) angle)
  (setf (slot-value obj 'ff-pointer) (new_btQuaternion axis angle)))

(cl:defmethod initialize-instance :after ((obj bt-quaternion) &key yaw pitch roll)
  (setf (slot-value obj 'ff-pointer) (new_btQuaternion yaw pitch roll)))

(cl:defmethod set-rotation ((self bt-quaternion) (axis bt-vector3) angle)
  (btQuaternion_setRotation (ff-pointer self) axis angle))

(cl:defmethod set-euler ((self bt-quaternion) yaw pitch roll)
  (btQuaternion_setEuler (ff-pointer self) yaw pitch roll))

(cl:defmethod set-euler-zyx ((self bt-quaternion) yaw pitch roll)
  (btQuaternion_setEulerZYX (ff-pointer self) yaw pitch roll))

(cl:shadow "+=")
(cl:defmethod += ((self bt-quaternion) (q bt-quaternion))
  (btQuaternion___add_assign__ (ff-pointer self) (ff-pointer q)))

(cl:shadow "-=")
(cl:defmethod -= ((self bt-quaternion) (q bt-quaternion))
  (btQuaternion___sub_assign__ (ff-pointer self) (ff-pointer q)))

(cl:shadow "*=")
(cl:defmethod *= ((self bt-quaternion) s)
  (btQuaternion___mul_assign__ (ff-pointer self) s))

(cl:shadow "*=")
(cl:defmethod *= ((self bt-quaternion) (q bt-quaternion))
  (btQuaternion___mul_assign__ (ff-pointer self) (ff-pointer q)))

(cl:defmethod dot ((self bt-quaternion) (q bt-quaternion))
  (btQuaternion_dot (ff-pointer self) (ff-pointer q)))

(cl:defmethod length2 ((self bt-quaternion))
  (btQuaternion_length2 (ff-pointer self)))

(cl:defmethod length ((self bt-quaternion))
  (btQuaternion_length (ff-pointer self)))

(cl:defmethod normalize ((self bt-quaternion))
  (btQuaternion_normalize (ff-pointer self)))

(cl:shadow "*")
(cl:defmethod * ((self bt-quaternion) s)
  (btQuaternion___mul__ (ff-pointer self) s))

(cl:shadow "/")
(cl:defmethod / ((self bt-quaternion) s)
  (btQuaternion___div__ (ff-pointer self) s))

(cl:shadow "/=")
(cl:defmethod /= ((self bt-quaternion) s)
  (btQuaternion___div_assign__ (ff-pointer self) s))

(cl:defmethod normalized ((self bt-quaternion))
  (btQuaternion_normalized (ff-pointer self)))

(cl:defmethod angle ((self bt-quaternion) (q bt-quaternion))
  (btQuaternion_angle (ff-pointer self) (ff-pointer q)))

(cl:defmethod get-angle ((self bt-quaternion))
  (btQuaternion_getAngle (ff-pointer self)))

(cl:defmethod get-axis ((self bt-quaternion))
  (btQuaternion_getAxis (ff-pointer self)))

(cl:defmethod inverse ((self bt-quaternion))
  (btQuaternion_inverse (ff-pointer self)))

(cl:shadow "+")
(cl:defmethod + ((self bt-quaternion) (q2 bt-quaternion))
  (btQuaternion___add__ (ff-pointer self) (ff-pointer q2)))

(cl:shadow "-")
(cl:defmethod - ((self bt-quaternion) (q2 bt-quaternion))
  (btQuaternion___sub__ (ff-pointer self) (ff-pointer q2)))

(cl:shadow "-")
(cl:defmethod - ((self bt-quaternion))
  (btQuaternion___neg__ (ff-pointer self)))

(cl:defmethod farthest ((self bt-quaternion) (qd bt-quaternion))
  (btQuaternion_farthest (ff-pointer self) (ff-pointer qd)))

(cl:defmethod nearest ((self bt-quaternion) (qd bt-quaternion))
  (btQuaternion_nearest (ff-pointer self) (ff-pointer qd)))

(cl:defmethod slerp ((self bt-quaternion) (q bt-quaternion) t-arg2)
  (btQuaternion_slerp (ff-pointer self) (ff-pointer q) t-arg2))

(cl:defmethod get-w ((self bt-quaternion))
  (btQuaternion_getW (ff-pointer self)))


(cl:defclass bt-matrix3x3()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-matrix3x3) &key)
  (setf (slot-value obj 'ff-pointer) (new_btMatrix3x3)))

(cl:defmethod initialize-instance :after ((obj bt-matrix3x3) &key (q bt-quaternion))
  (setf (slot-value obj 'ff-pointer) (new_btMatrix3x3 q)))

(cl:defmethod initialize-instance :after ((obj bt-matrix3x3) &key xx xy xz yx yy yz zx zy zz)
  (setf (slot-value obj 'ff-pointer) (new_btMatrix3x3 xx xy xz yx yy yz zx zy zz)))

(cl:defmethod initialize-instance :after ((obj bt-matrix3x3) &key (other bt-matrix3x3))
  (setf (slot-value obj 'ff-pointer) (new_btMatrix3x3 (ff-pointer other))))

(cl:shadow "=")
(cl:defmethod = ((self bt-matrix3x3) (other bt-matrix3x3))
  (btMatrix3x3___assign__ (ff-pointer self) (ff-pointer other)))

(cl:defmethod get-column ((self bt-matrix3x3) (i cl:integer))
  (btMatrix3x3_getColumn (ff-pointer self) i))

(cl:defmethod get-row ((self bt-matrix3x3) (i cl:integer))
  (btMatrix3x3_getRow (ff-pointer self) i))

(cl:shadow "[]")
(cl:defmethod [] ((self bt-matrix3x3) (i cl:integer))
  (btMatrix3x3___aref__ (ff-pointer self) i))

(cl:shadow "[]")
(cl:defmethod [] ((self bt-matrix3x3) (i cl:integer))
  (btMatrix3x3___aref__ (ff-pointer self) i))

(cl:shadow "*=")
(cl:defmethod *= ((self bt-matrix3x3) (m bt-matrix3x3))
  (btMatrix3x3___mul_assign__ (ff-pointer self) (ff-pointer m)))

(cl:shadow "+=")
(cl:defmethod += ((self bt-matrix3x3) (m bt-matrix3x3))
  (btMatrix3x3___add_assign__ (ff-pointer self) (ff-pointer m)))

(cl:shadow "-=")
(cl:defmethod -= ((self bt-matrix3x3) (m bt-matrix3x3))
  (btMatrix3x3___sub_assign__ (ff-pointer self) (ff-pointer m)))

(cl:defmethod set-from-open-glsub-matrix ((self bt-matrix3x3) m)
  (btMatrix3x3_setFromOpenGLSubMatrix (ff-pointer self) m))

(cl:defmethod set-value ((self bt-matrix3x3) xx xy xz yx yy yz zx zy zz)
  (btMatrix3x3_setValue (ff-pointer self) xx xy xz yx yy yz zx zy zz))

(cl:defmethod set-rotation ((self bt-matrix3x3) (q bt-quaternion))
  (btMatrix3x3_setRotation (ff-pointer self) q))

(cl:defmethod set-euler-ypr ((self bt-matrix3x3) yaw pitch roll)
  (btMatrix3x3_setEulerYPR (ff-pointer self) yaw pitch roll))

(cl:defmethod set-euler-zyx ((self bt-matrix3x3) (eulerX cl:number) (eulerY cl:number) (eulerZ cl:number))
  (btMatrix3x3_setEulerZYX (ff-pointer self) eulerX eulerY eulerZ))

(cl:defmethod set-identity ((self bt-matrix3x3))
  (btMatrix3x3_setIdentity (ff-pointer self)))

(cl:defmethod get-open-glsub-matrix ((self bt-matrix3x3) m)
  (btMatrix3x3_getOpenGLSubMatrix (ff-pointer self) m))

(cl:defmethod get-rotation ((self bt-matrix3x3) (q bt-quaternion))
  (btMatrix3x3_getRotation (ff-pointer self) q))

(cl:defmethod get-euler-ypr ((self bt-matrix3x3) yaw pitch roll)
  (btMatrix3x3_getEulerYPR (ff-pointer self) yaw pitch roll))

(cl:defmethod get-euler-zyx ((self bt-matrix3x3) yaw pitch roll (solution_number cl:integer))
  (btMatrix3x3_getEulerZYX (ff-pointer self) yaw pitch roll solution_number))

(cl:defmethod get-euler-zyx ((self bt-matrix3x3) yaw pitch roll)
  (btMatrix3x3_getEulerZYX (ff-pointer self) yaw pitch roll))

(cl:defmethod scaled ((self bt-matrix3x3) (s bt-vector3))
  (btMatrix3x3_scaled (ff-pointer self) s))

(cl:defmethod determinant ((self bt-matrix3x3))
  (btMatrix3x3_determinant (ff-pointer self)))

(cl:defmethod adjoint ((self bt-matrix3x3))
  (btMatrix3x3_adjoint (ff-pointer self)))

(cl:defmethod absolute ((self bt-matrix3x3))
  (btMatrix3x3_absolute (ff-pointer self)))

(cl:defmethod transpose ((self bt-matrix3x3))
  (btMatrix3x3_transpose (ff-pointer self)))

(cl:defmethod inverse ((self bt-matrix3x3))
  (btMatrix3x3_inverse (ff-pointer self)))

(cl:defmethod transpose-times ((self bt-matrix3x3) (m bt-matrix3x3))
  (btMatrix3x3_transposeTimes (ff-pointer self) (ff-pointer m)))

(cl:defmethod times-transpose ((self bt-matrix3x3) (m bt-matrix3x3))
  (btMatrix3x3_timesTranspose (ff-pointer self) (ff-pointer m)))

(cl:defmethod tdotx ((self bt-matrix3x3) (v bt-vector3))
  (btMatrix3x3_tdotx (ff-pointer self) v))

(cl:defmethod tdoty ((self bt-matrix3x3) (v bt-vector3))
  (btMatrix3x3_tdoty (ff-pointer self) v))

(cl:defmethod tdotz ((self bt-matrix3x3) (v bt-vector3))
  (btMatrix3x3_tdotz (ff-pointer self) v))

(cl:defmethod diagonalize ((self bt-matrix3x3) (rot bt-matrix3x3) (threshold cl:number) (maxSteps cl:integer))
  (btMatrix3x3_diagonalize (ff-pointer self) (ff-pointer rot) threshold maxSteps))

(cl:defmethod cofac ((self bt-matrix3x3) (r1 cl:integer) (c1 cl:integer) (r2 cl:integer) (c2 cl:integer))
  (btMatrix3x3_cofac (ff-pointer self) r1 c1 r2 c2))

(cl:defmethod serialize ((self bt-matrix3x3) dataOut)
  (btMatrix3x3_serialize (ff-pointer self) dataOut))

(cl:defmethod serialize-float ((self bt-matrix3x3) dataOut)
  (btMatrix3x3_serializeFloat (ff-pointer self) dataOut))

(cl:defmethod de-serialize ((self bt-matrix3x3) dataIn)
  (btMatrix3x3_deSerialize (ff-pointer self) dataIn))

(cl:defmethod de-serialize-float ((self bt-matrix3x3) dataIn)
  (btMatrix3x3_deSerializeFloat (ff-pointer self) dataIn))

(cl:defmethod de-serialize-double ((self bt-matrix3x3) dataIn)
  (btMatrix3x3_deSerializeDouble (ff-pointer self) dataIn))


(cl:defclass bt-transform()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-transform) &key)
  (setf (slot-value obj 'ff-pointer) (new_btTransform)))

(cl:defmethod initialize-instance :after ((obj bt-transform) &key (q bt-quaternion) (c bt-vector3))
  (setf (slot-value obj 'ff-pointer) (new_btTransform q c)))

(cl:defmethod initialize-instance :after ((obj bt-transform) &key (q bt-quaternion))
  (setf (slot-value obj 'ff-pointer) (new_btTransform q)))

(cl:defmethod initialize-instance :after ((obj bt-transform) &key (b bt-matrix3x3) (c bt-vector3))
  (setf (slot-value obj 'ff-pointer) (new_btTransform b c)))

(cl:defmethod initialize-instance :after ((obj bt-transform) &key (b bt-matrix3x3))
  (setf (slot-value obj 'ff-pointer) (new_btTransform b)))

(cl:defmethod initialize-instance :after ((obj bt-transform) &key (other bt-transform))
  (setf (slot-value obj 'ff-pointer) (new_btTransform (ff-pointer other))))

(cl:shadow "=")
(cl:defmethod = ((self bt-transform) (other bt-transform))
  (btTransform___assign__ (ff-pointer self) (ff-pointer other)))

(cl:defmethod mult ((self bt-transform) (t1 bt-transform) (t2 bt-transform))
  (btTransform_mult (ff-pointer self) (ff-pointer t1) (ff-pointer t2)))

(cl:shadow "()")
(cl:defmethod () ((self bt-transform) (x bt-vector3))
  (btTransform___funcall__ (ff-pointer self) x))

(cl:shadow "*")
(cl:defmethod * ((self bt-transform) (x bt-vector3))
  (btTransform___mul__ (ff-pointer self) x))

(cl:shadow "*")
(cl:defmethod * ((self bt-transform) (q bt-quaternion))
  (btTransform___mul__ (ff-pointer self) q))

(cl:defmethod get-basis ((self bt-transform))
  (btTransform_getBasis (ff-pointer self)))

(cl:defmethod get-basis ((self bt-transform))
  (btTransform_getBasis (ff-pointer self)))

(cl:defmethod get-origin ((self bt-transform))
  (btTransform_getOrigin (ff-pointer self)))

(cl:defmethod get-origin ((self bt-transform))
  (btTransform_getOrigin (ff-pointer self)))

(cl:defmethod get-rotation ((self bt-transform))
  (btTransform_getRotation (ff-pointer self)))

(cl:defmethod set-from-open-glmatrix ((self bt-transform) m)
  (btTransform_setFromOpenGLMatrix (ff-pointer self) m))

(cl:defmethod get-open-glmatrix ((self bt-transform) m)
  (btTransform_getOpenGLMatrix (ff-pointer self) m))

(cl:defmethod set-origin ((self bt-transform) (origin bt-vector3))
  (btTransform_setOrigin (ff-pointer self) origin))

(cl:defmethod inv-xform ((self bt-transform) (inVec bt-vector3))
  (btTransform_invXform (ff-pointer self) inVec))

(cl:defmethod set-basis ((self bt-transform) (basis bt-matrix3x3))
  (btTransform_setBasis (ff-pointer self) basis))

(cl:defmethod set-rotation ((self bt-transform) (q bt-quaternion))
  (btTransform_setRotation (ff-pointer self) q))

(cl:defmethod set-identity ((self bt-transform))
  (btTransform_setIdentity (ff-pointer self)))

(cl:shadow "*=")
(cl:defmethod *= ((self bt-transform) (t-arg1 bt-transform))
  (btTransform___mul_assign__ (ff-pointer self) (ff-pointer t-arg1)))

(cl:defmethod inverse ((self bt-transform))
  (btTransform_inverse (ff-pointer self)))

(cl:defmethod inverse-times ((self bt-transform) (t-arg1 bt-transform))
  (btTransform_inverseTimes (ff-pointer self) (ff-pointer t-arg1)))

(cl:shadow "*")
(cl:defmethod * ((self bt-transform) (t-arg1 bt-transform))
  (btTransform___mul__ (ff-pointer self) (ff-pointer t-arg1)))

(cl:defmethod serialize ((self bt-transform) dataOut)
  (btTransform_serialize (ff-pointer self) dataOut))

(cl:defmethod serialize-float ((self bt-transform) dataOut)
  (btTransform_serializeFloat (ff-pointer self) dataOut))

(cl:defmethod de-serialize ((self bt-transform) dataIn)
  (btTransform_deSerialize (ff-pointer self) dataIn))

(cl:defmethod de-serialize-double ((self bt-transform) dataIn)
  (btTransform_deSerializeDouble (ff-pointer self) dataIn))

(cl:defmethod de-serialize-float ((self bt-transform) dataIn)
  (btTransform_deSerializeFloat (ff-pointer self) dataIn))


(cl:defclass bt-motion-state()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod get-world-transform ((self bt-motion-state) (worldTrans bt-transform))
  (btMotionState_getWorldTransform (ff-pointer self) worldTrans))

(cl:defmethod set-world-transform ((self bt-motion-state) (worldTrans bt-transform))
  (btMotionState_setWorldTransform (ff-pointer self) worldTrans))


(cl:defclass bt-collision-object()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod merges-simulation-islands ((self bt-collision-object))
  (btCollisionObject_mergesSimulationIslands (ff-pointer self)))

(cl:defmethod get-anisotropic-friction ((self bt-collision-object))
  (btCollisionObject_getAnisotropicFriction (ff-pointer self)))

(cl:defmethod set-anisotropic-friction ((self bt-collision-object) (anisotropicFriction bt-vector3))
  (btCollisionObject_setAnisotropicFriction (ff-pointer self) anisotropicFriction))

(cl:defmethod has-anisotropic-friction ((self bt-collision-object))
  (btCollisionObject_hasAnisotropicFriction (ff-pointer self)))

(cl:defmethod set-contact-processing-threshold ((self bt-collision-object) (contactProcessingThreshold cl:number))
  (btCollisionObject_setContactProcessingThreshold (ff-pointer self) contactProcessingThreshold))

(cl:defmethod get-contact-processing-threshold ((self bt-collision-object))
  (btCollisionObject_getContactProcessingThreshold (ff-pointer self)))

(cl:defmethod is-static-object ((self bt-collision-object))
  (btCollisionObject_isStaticObject (ff-pointer self)))

(cl:defmethod is-kinematic-object ((self bt-collision-object))
  (btCollisionObject_isKinematicObject (ff-pointer self)))

(cl:defmethod is-static-or-kinematic-object ((self bt-collision-object))
  (btCollisionObject_isStaticOrKinematicObject (ff-pointer self)))

(cl:defmethod has-contact-response ((self bt-collision-object))
  (btCollisionObject_hasContactResponse (ff-pointer self)))

(cl:defmethod initialize-instance :after ((obj bt-collision-object) &key)
  (setf (slot-value obj 'ff-pointer) (new_btCollisionObject)))

(cl:defmethod set-collision-shape ((self bt-collision-object) collisionShape)
  (btCollisionObject_setCollisionShape (ff-pointer self) collisionShape))

(cl:defmethod get-collision-shape ((self bt-collision-object))
  (btCollisionObject_getCollisionShape (ff-pointer self)))

(cl:defmethod get-collision-shape ((self bt-collision-object))
  (btCollisionObject_getCollisionShape (ff-pointer self)))

(cl:defmethod get-root-collision-shape ((self bt-collision-object))
  (btCollisionObject_getRootCollisionShape (ff-pointer self)))

(cl:defmethod get-root-collision-shape ((self bt-collision-object))
  (btCollisionObject_getRootCollisionShape (ff-pointer self)))

(cl:defmethod internal-set-temporary-collision-shape ((self bt-collision-object) collisionShape)
  (btCollisionObject_internalSetTemporaryCollisionShape (ff-pointer self) collisionShape))

(cl:defmethod internal-get-extension-pointer ((self bt-collision-object))
  (btCollisionObject_internalGetExtensionPointer (ff-pointer self)))

(cl:defmethod internal-set-extension-pointer ((self bt-collision-object) pointer)
  (btCollisionObject_internalSetExtensionPointer (ff-pointer self) pointer))

(cl:defmethod get-activation-state ((self bt-collision-object))
  (btCollisionObject_getActivationState (ff-pointer self)))

(cl:defmethod set-activation-state ((self bt-collision-object) (newState cl:integer))
  (btCollisionObject_setActivationState (ff-pointer self) newState))

(cl:defmethod set-deactivation-time ((self bt-collision-object) (time cl:number))
  (btCollisionObject_setDeactivationTime (ff-pointer self) time))

(cl:defmethod get-deactivation-time ((self bt-collision-object))
  (btCollisionObject_getDeactivationTime (ff-pointer self)))

(cl:defmethod force-activation-state ((self bt-collision-object) (newState cl:integer))
  (btCollisionObject_forceActivationState (ff-pointer self) newState))

(cl:defmethod activate ((self bt-collision-object) (forceActivation t))
  (btCollisionObject_activate (ff-pointer self) forceActivation))

(cl:defmethod activate ((self bt-collision-object))
  (btCollisionObject_activate (ff-pointer self)))

(cl:defmethod is-active ((self bt-collision-object))
  (btCollisionObject_isActive (ff-pointer self)))

(cl:defmethod set-restitution ((self bt-collision-object) (rest cl:number))
  (btCollisionObject_setRestitution (ff-pointer self) rest))

(cl:defmethod get-restitution ((self bt-collision-object))
  (btCollisionObject_getRestitution (ff-pointer self)))

(cl:defmethod set-friction ((self bt-collision-object) (frict cl:number))
  (btCollisionObject_setFriction (ff-pointer self) frict))

(cl:defmethod get-friction ((self bt-collision-object))
  (btCollisionObject_getFriction (ff-pointer self)))

(cl:defmethod get-internal-type ((self bt-collision-object))
  (btCollisionObject_getInternalType (ff-pointer self)))

(cl:defmethod get-world-transform ((self bt-collision-object))
  (btCollisionObject_getWorldTransform (ff-pointer self)))

(cl:defmethod get-world-transform ((self bt-collision-object))
  (btCollisionObject_getWorldTransform (ff-pointer self)))

(cl:defmethod set-world-transform ((self bt-collision-object) (worldTrans bt-transform))
  (btCollisionObject_setWorldTransform (ff-pointer self) worldTrans))

(cl:defmethod get-broadphase-handle ((self bt-collision-object))
  (btCollisionObject_getBroadphaseHandle (ff-pointer self)))

(cl:defmethod get-broadphase-handle ((self bt-collision-object))
  (btCollisionObject_getBroadphaseHandle (ff-pointer self)))

(cl:defmethod set-broadphase-handle ((self bt-collision-object) handle)
  (btCollisionObject_setBroadphaseHandle (ff-pointer self) handle))

(cl:defmethod get-interpolation-world-transform ((self bt-collision-object))
  (btCollisionObject_getInterpolationWorldTransform (ff-pointer self)))

(cl:defmethod get-interpolation-world-transform ((self bt-collision-object))
  (btCollisionObject_getInterpolationWorldTransform (ff-pointer self)))

(cl:defmethod set-interpolation-world-transform ((self bt-collision-object) (trans bt-transform))
  (btCollisionObject_setInterpolationWorldTransform (ff-pointer self) trans))

(cl:defmethod set-interpolation-linear-velocity ((self bt-collision-object) (linvel bt-vector3))
  (btCollisionObject_setInterpolationLinearVelocity (ff-pointer self) linvel))

(cl:defmethod set-interpolation-angular-velocity ((self bt-collision-object) (angvel bt-vector3))
  (btCollisionObject_setInterpolationAngularVelocity (ff-pointer self) angvel))

(cl:defmethod get-interpolation-linear-velocity ((self bt-collision-object))
  (btCollisionObject_getInterpolationLinearVelocity (ff-pointer self)))

(cl:defmethod get-interpolation-angular-velocity ((self bt-collision-object))
  (btCollisionObject_getInterpolationAngularVelocity (ff-pointer self)))

(cl:defmethod get-island-tag ((self bt-collision-object))
  (btCollisionObject_getIslandTag (ff-pointer self)))

(cl:defmethod set-island-tag ((self bt-collision-object) (tag cl:integer))
  (btCollisionObject_setIslandTag (ff-pointer self) tag))

(cl:defmethod get-companion-id ((self bt-collision-object))
  (btCollisionObject_getCompanionId (ff-pointer self)))

(cl:defmethod set-companion-id ((self bt-collision-object) (id cl:integer))
  (btCollisionObject_setCompanionId (ff-pointer self) id))

(cl:defmethod get-hit-fraction ((self bt-collision-object))
  (btCollisionObject_getHitFraction (ff-pointer self)))

(cl:defmethod set-hit-fraction ((self bt-collision-object) (hitFraction cl:number))
  (btCollisionObject_setHitFraction (ff-pointer self) hitFraction))

(cl:defmethod get-collision-flags ((self bt-collision-object))
  (btCollisionObject_getCollisionFlags (ff-pointer self)))

(cl:defmethod set-collision-flags ((self bt-collision-object) (flags cl:integer))
  (btCollisionObject_setCollisionFlags (ff-pointer self) flags))

(cl:defmethod get-ccd-swept-sphere-radius ((self bt-collision-object))
  (btCollisionObject_getCcdSweptSphereRadius (ff-pointer self)))

(cl:defmethod set-ccd-swept-sphere-radius ((self bt-collision-object) (radius cl:number))
  (btCollisionObject_setCcdSweptSphereRadius (ff-pointer self) radius))

(cl:defmethod get-ccd-motion-threshold ((self bt-collision-object))
  (btCollisionObject_getCcdMotionThreshold (ff-pointer self)))

(cl:defmethod get-ccd-square-motion-threshold ((self bt-collision-object))
  (btCollisionObject_getCcdSquareMotionThreshold (ff-pointer self)))

(cl:defmethod set-ccd-motion-threshold ((self bt-collision-object) (ccdMotionThreshold cl:number))
  (btCollisionObject_setCcdMotionThreshold (ff-pointer self) ccdMotionThreshold))

(cl:defmethod get-user-pointer ((self bt-collision-object))
  (btCollisionObject_getUserPointer (ff-pointer self)))

(cl:defmethod set-user-pointer ((self bt-collision-object) userPointer)
  (btCollisionObject_setUserPointer (ff-pointer self) userPointer))

(cl:defmethod check-collide-with ((self bt-collision-object) (co bt-collision-object))
  (btCollisionObject_checkCollideWith (ff-pointer self) (ff-pointer co)))

(cl:defmethod calculate-serialize-buffer-size ((self bt-collision-object))
  (btCollisionObject_calculateSerializeBufferSize (ff-pointer self)))

(cl:defmethod serialize ((self bt-collision-object) dataBuffer serializer)
  (btCollisionObject_serialize (ff-pointer self) dataBuffer serializer))

(cl:defmethod serialize-single-object ((self bt-collision-object) serializer)
  (btCollisionObject_serializeSingleObject (ff-pointer self) serializer))


(cl:defclass bt-collision-object-double-data()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-collision-object-double-data) &key)
  (setf (slot-value obj 'ff-pointer) (new_btCollisionObjectDoubleData)))


(cl:defclass bt-collision-object-float-data()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-collision-object-float-data) &key)
  (setf (slot-value obj 'ff-pointer) (new_btCollisionObjectFloatData)))


(cl:defclass bt-dispatcher-info()
  ((ff-pointer :reader ff-pointer)))


(cl:defclass bt-dispatcher()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod find-algorithm ((self bt-dispatcher) (body0 bt-collision-object) (body1 bt-collision-object) sharedManifold)
  (btDispatcher_findAlgorithm (ff-pointer self) body0 body1 sharedManifold))

(cl:defmethod find-algorithm ((self bt-dispatcher) (body0 bt-collision-object) (body1 bt-collision-object))
  (btDispatcher_findAlgorithm (ff-pointer self) body0 body1))

(cl:defmethod get-new-manifold ((self bt-dispatcher) body0 body1)
  (btDispatcher_getNewManifold (ff-pointer self) body0 body1))

(cl:defmethod release-manifold ((self bt-dispatcher) manifold)
  (btDispatcher_releaseManifold (ff-pointer self) manifold))

(cl:defmethod clear-manifold ((self bt-dispatcher) manifold)
  (btDispatcher_clearManifold (ff-pointer self) manifold))

(cl:defmethod needs-collision ((self bt-dispatcher) (body0 bt-collision-object) (body1 bt-collision-object))
  (btDispatcher_needsCollision (ff-pointer self) body0 body1))

(cl:defmethod needs-response ((self bt-dispatcher) (body0 bt-collision-object) (body1 bt-collision-object))
  (btDispatcher_needsResponse (ff-pointer self) body0 body1))

(cl:defmethod dispatch-all-collision-pairs ((self bt-dispatcher) pairCache (dispatchInfo bt-dispatcher-info) (dispatcher bt-dispatcher))
  (btDispatcher_dispatchAllCollisionPairs (ff-pointer self) pairCache dispatchInfo (ff-pointer dispatcher)))

(cl:defmethod get-num-manifolds ((self bt-dispatcher))
  (btDispatcher_getNumManifolds (ff-pointer self)))

(cl:defmethod get-manifold-by-index-internal ((self bt-dispatcher) (index cl:integer))
  (btDispatcher_getManifoldByIndexInternal (ff-pointer self) index))

(cl:defmethod get-internal-manifold-pointer ((self bt-dispatcher))
  (btDispatcher_getInternalManifoldPointer (ff-pointer self)))

(cl:defmethod get-internal-manifold-pool ((self bt-dispatcher))
  (btDispatcher_getInternalManifoldPool (ff-pointer self)))

(cl:defmethod get-internal-manifold-pool ((self bt-dispatcher))
  (btDispatcher_getInternalManifoldPool (ff-pointer self)))

(cl:defmethod allocate-collision-algorithm ((self bt-dispatcher) (size cl:integer))
  (btDispatcher_allocateCollisionAlgorithm (ff-pointer self) size))

(cl:defmethod free-collision-algorithm ((self bt-dispatcher) ptr)
  (btDispatcher_freeCollisionAlgorithm (ff-pointer self) ptr))


(cl:defclass bt-transform-util()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-transform-util) &key)
  (setf (slot-value obj 'ff-pointer) (new_btTransformUtil)))


(cl:defclass bt-convex-separating-distance-util()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-convex-separating-distance-util) &key (boundingRadiusA cl:number) (boundingRadiusB cl:number))
  (setf (slot-value obj 'ff-pointer) (new_btConvexSeparatingDistanceUtil boundingRadiusA boundingRadiusB)))

(cl:defmethod get-conservative-separating-distance ((self bt-convex-separating-distance-util))
  (btConvexSeparatingDistanceUtil_getConservativeSeparatingDistance (ff-pointer self)))

(cl:defmethod update-separating-distance ((self bt-convex-separating-distance-util) (transA bt-transform) (transB bt-transform))
  (btConvexSeparatingDistanceUtil_updateSeparatingDistance (ff-pointer self) transA transB))

(cl:defmethod init-separating-distance ((self bt-convex-separating-distance-util) (separatingVector bt-vector3) (separatingDistance cl:number) (transA bt-transform) (transB bt-transform))
  (btConvexSeparatingDistanceUtil_initSeparatingDistance (ff-pointer self) separatingVector separatingDistance transA transB))


(cl:defclass bt-constraint-row()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-constraint-row) &key)
  (setf (slot-value obj 'ff-pointer) (new_btConstraintRow)))


(cl:defclass bt-manifold-point()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-manifold-point) &key)
  (setf (slot-value obj 'ff-pointer) (new_btManifoldPoint)))

(cl:defmethod initialize-instance :after ((obj bt-manifold-point) &key (pointA bt-vector3) (pointB bt-vector3) (normal bt-vector3) (distance cl:number))
  (setf (slot-value obj 'ff-pointer) (new_btManifoldPoint pointA pointB normal distance)))

(cl:defmethod (cl:setf m_localPointA) (arg0 (obj bt-manifold-point))
  (btManifoldPoint_m_localPointA_set (ff-pointer obj) arg0))

(cl:defmethod m_localPointA ((obj bt-manifold-point))
  (btManifoldPoint_m_localPointA_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_localPointB) (arg0 (obj bt-manifold-point))
  (btManifoldPoint_m_localPointB_set (ff-pointer obj) arg0))

(cl:defmethod m_localPointB ((obj bt-manifold-point))
  (btManifoldPoint_m_localPointB_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_positionWorldOnB) (arg0 (obj bt-manifold-point))
  (btManifoldPoint_m_positionWorldOnB_set (ff-pointer obj) arg0))

(cl:defmethod m_positionWorldOnB ((obj bt-manifold-point))
  (btManifoldPoint_m_positionWorldOnB_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_positionWorldOnA) (arg0 (obj bt-manifold-point))
  (btManifoldPoint_m_positionWorldOnA_set (ff-pointer obj) arg0))

(cl:defmethod m_positionWorldOnA ((obj bt-manifold-point))
  (btManifoldPoint_m_positionWorldOnA_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_normalWorldOnB) (arg0 (obj bt-manifold-point))
  (btManifoldPoint_m_normalWorldOnB_set (ff-pointer obj) arg0))

(cl:defmethod m_normalWorldOnB ((obj bt-manifold-point))
  (btManifoldPoint_m_normalWorldOnB_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_distance1) (arg0 (obj bt-manifold-point))
  (btManifoldPoint_m_distance1_set (ff-pointer obj) arg0))

(cl:defmethod m_distance1 ((obj bt-manifold-point))
  (btManifoldPoint_m_distance1_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_combinedFriction) (arg0 (obj bt-manifold-point))
  (btManifoldPoint_m_combinedFriction_set (ff-pointer obj) arg0))

(cl:defmethod m_combinedFriction ((obj bt-manifold-point))
  (btManifoldPoint_m_combinedFriction_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_combinedRestitution) (arg0 (obj bt-manifold-point))
  (btManifoldPoint_m_combinedRestitution_set (ff-pointer obj) arg0))

(cl:defmethod m_combinedRestitution ((obj bt-manifold-point))
  (btManifoldPoint_m_combinedRestitution_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_partId0) (arg0 (obj bt-manifold-point))
  (btManifoldPoint_m_partId0_set (ff-pointer obj) arg0))

(cl:defmethod m_partId0 ((obj bt-manifold-point))
  (btManifoldPoint_m_partId0_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_partId1) (arg0 (obj bt-manifold-point))
  (btManifoldPoint_m_partId1_set (ff-pointer obj) arg0))

(cl:defmethod m_partId1 ((obj bt-manifold-point))
  (btManifoldPoint_m_partId1_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_index0) (arg0 (obj bt-manifold-point))
  (btManifoldPoint_m_index0_set (ff-pointer obj) arg0))

(cl:defmethod m_index0 ((obj bt-manifold-point))
  (btManifoldPoint_m_index0_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_index1) (arg0 (obj bt-manifold-point))
  (btManifoldPoint_m_index1_set (ff-pointer obj) arg0))

(cl:defmethod m_index1 ((obj bt-manifold-point))
  (btManifoldPoint_m_index1_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_userPersistentData) (arg0 (obj bt-manifold-point))
  (btManifoldPoint_m_userPersistentData_set (ff-pointer obj) arg0))

(cl:defmethod m_userPersistentData ((obj bt-manifold-point))
  (btManifoldPoint_m_userPersistentData_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_appliedImpulse) (arg0 (obj bt-manifold-point))
  (btManifoldPoint_m_appliedImpulse_set (ff-pointer obj) arg0))

(cl:defmethod m_appliedImpulse ((obj bt-manifold-point))
  (btManifoldPoint_m_appliedImpulse_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_lateralFrictionInitialized) (arg0 (obj bt-manifold-point))
  (btManifoldPoint_m_lateralFrictionInitialized_set (ff-pointer obj) arg0))

(cl:defmethod m_lateralFrictionInitialized ((obj bt-manifold-point))
  (btManifoldPoint_m_lateralFrictionInitialized_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_appliedImpulseLateral1) (arg0 (obj bt-manifold-point))
  (btManifoldPoint_m_appliedImpulseLateral1_set (ff-pointer obj) arg0))

(cl:defmethod m_appliedImpulseLateral1 ((obj bt-manifold-point))
  (btManifoldPoint_m_appliedImpulseLateral1_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_appliedImpulseLateral2) (arg0 (obj bt-manifold-point))
  (btManifoldPoint_m_appliedImpulseLateral2_set (ff-pointer obj) arg0))

(cl:defmethod m_appliedImpulseLateral2 ((obj bt-manifold-point))
  (btManifoldPoint_m_appliedImpulseLateral2_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_contactMotion1) (arg0 (obj bt-manifold-point))
  (btManifoldPoint_m_contactMotion1_set (ff-pointer obj) arg0))

(cl:defmethod m_contactMotion1 ((obj bt-manifold-point))
  (btManifoldPoint_m_contactMotion1_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_contactMotion2) (arg0 (obj bt-manifold-point))
  (btManifoldPoint_m_contactMotion2_set (ff-pointer obj) arg0))

(cl:defmethod m_contactMotion2 ((obj bt-manifold-point))
  (btManifoldPoint_m_contactMotion2_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_contactCFM1) (arg0 (obj bt-manifold-point))
  (btManifoldPoint_m_contactCFM1_set (ff-pointer obj) arg0))

(cl:defmethod m_contactCFM1 ((obj bt-manifold-point))
  (btManifoldPoint_m_contactCFM1_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_contactCFM2) (arg0 (obj bt-manifold-point))
  (btManifoldPoint_m_contactCFM2_set (ff-pointer obj) arg0))

(cl:defmethod m_contactCFM2 ((obj bt-manifold-point))
  (btManifoldPoint_m_contactCFM2_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_lifeTime) (arg0 (obj bt-manifold-point))
  (btManifoldPoint_m_lifeTime_set (ff-pointer obj) arg0))

(cl:defmethod m_lifeTime ((obj bt-manifold-point))
  (btManifoldPoint_m_lifeTime_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_lateralFrictionDir1) (arg0 (obj bt-manifold-point))
  (btManifoldPoint_m_lateralFrictionDir1_set (ff-pointer obj) arg0))

(cl:defmethod m_lateralFrictionDir1 ((obj bt-manifold-point))
  (btManifoldPoint_m_lateralFrictionDir1_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_lateralFrictionDir2) (arg0 (obj bt-manifold-point))
  (btManifoldPoint_m_lateralFrictionDir2_set (ff-pointer obj) arg0))

(cl:defmethod m_lateralFrictionDir2 ((obj bt-manifold-point))
  (btManifoldPoint_m_lateralFrictionDir2_get (ff-pointer obj)))

(cl:defmethod (cl:setf mConstraintRow) (arg0 (obj bt-manifold-point))
  (btManifoldPoint_mConstraintRow_set (ff-pointer obj) arg0))

(cl:defmethod mConstraintRow ((obj bt-manifold-point))
  (btManifoldPoint_mConstraintRow_get (ff-pointer obj)))

(cl:defmethod get-distance ((self bt-manifold-point))
  (btManifoldPoint_getDistance (ff-pointer self)))

(cl:defmethod get-life-time ((self bt-manifold-point))
  (btManifoldPoint_getLifeTime (ff-pointer self)))

(cl:defmethod get-position-world-on-a ((self bt-manifold-point))
  (btManifoldPoint_getPositionWorldOnA (ff-pointer self)))

(cl:defmethod get-position-world-on-b ((self bt-manifold-point))
  (btManifoldPoint_getPositionWorldOnB (ff-pointer self)))

(cl:defmethod set-distance ((self bt-manifold-point) (dist cl:number))
  (btManifoldPoint_setDistance (ff-pointer self) dist))

(cl:defmethod get-applied-impulse ((self bt-manifold-point))
  (btManifoldPoint_getAppliedImpulse (ff-pointer self)))


(cl:defclass bt-persistent-manifold(btTypedObject)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod (cl:setf m_companionIdA) (arg0 (obj bt-persistent-manifold))
  (btPersistentManifold_m_companionIdA_set (ff-pointer obj) arg0))

(cl:defmethod m_companionIdA ((obj bt-persistent-manifold))
  (btPersistentManifold_m_companionIdA_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_companionIdB) (arg0 (obj bt-persistent-manifold))
  (btPersistentManifold_m_companionIdB_set (ff-pointer obj) arg0))

(cl:defmethod m_companionIdB ((obj bt-persistent-manifold))
  (btPersistentManifold_m_companionIdB_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_index1a) (arg0 (obj bt-persistent-manifold))
  (btPersistentManifold_m_index1a_set (ff-pointer obj) arg0))

(cl:defmethod m_index1a ((obj bt-persistent-manifold))
  (btPersistentManifold_m_index1a_get (ff-pointer obj)))

(cl:defmethod initialize-instance :after ((obj bt-persistent-manifold) &key)
  (setf (slot-value obj 'ff-pointer) (new_btPersistentManifold)))

(cl:defmethod initialize-instance :after ((obj bt-persistent-manifold) &key body0 body1 (arg2 cl:integer) (contactBreakingThreshold cl:number) (contactProcessingThreshold cl:number))
  (setf (slot-value obj 'ff-pointer) (new_btPersistentManifold body0 body1 arg2 contactBreakingThreshold contactProcessingThreshold)))

(cl:defmethod get-body0 ((self bt-persistent-manifold))
  (btPersistentManifold_getBody0 (ff-pointer self)))

(cl:defmethod get-body1 ((self bt-persistent-manifold))
  (btPersistentManifold_getBody1 (ff-pointer self)))

(cl:defmethod get-body0 ((self bt-persistent-manifold))
  (btPersistentManifold_getBody0 (ff-pointer self)))

(cl:defmethod get-body1 ((self bt-persistent-manifold))
  (btPersistentManifold_getBody1 (ff-pointer self)))

(cl:defmethod set-bodies ((self bt-persistent-manifold) body0 body1)
  (btPersistentManifold_setBodies (ff-pointer self) body0 body1))

(cl:defmethod clear-user-cache ((self bt-persistent-manifold) (pt bt-manifold-point))
  (btPersistentManifold_clearUserCache (ff-pointer self) pt))

(cl:defmethod get-num-contacts ((self bt-persistent-manifold))
  (btPersistentManifold_getNumContacts (ff-pointer self)))

(cl:defmethod get-contact-point ((self bt-persistent-manifold) (index cl:integer))
  (btPersistentManifold_getContactPoint (ff-pointer self) index))

(cl:defmethod get-contact-point ((self bt-persistent-manifold) (index cl:integer))
  (btPersistentManifold_getContactPoint (ff-pointer self) index))

(cl:defmethod get-contact-breaking-threshold ((self bt-persistent-manifold))
  (btPersistentManifold_getContactBreakingThreshold (ff-pointer self)))

(cl:defmethod get-contact-processing-threshold ((self bt-persistent-manifold))
  (btPersistentManifold_getContactProcessingThreshold (ff-pointer self)))

(cl:defmethod get-cache-entry ((self bt-persistent-manifold) (newPoint bt-manifold-point))
  (btPersistentManifold_getCacheEntry (ff-pointer self) newPoint))

(cl:defmethod add-manifold-point ((self bt-persistent-manifold) (newPoint bt-manifold-point))
  (btPersistentManifold_addManifoldPoint (ff-pointer self) newPoint))

(cl:defmethod remove-contact-point ((self bt-persistent-manifold) (index cl:integer))
  (btPersistentManifold_removeContactPoint (ff-pointer self) index))

(cl:defmethod replace-contact-point ((self bt-persistent-manifold) (newPoint bt-manifold-point) (insertIndex cl:integer))
  (btPersistentManifold_replaceContactPoint (ff-pointer self) newPoint insertIndex))

(cl:defmethod valid-contact-distance ((self bt-persistent-manifold) (pt bt-manifold-point))
  (btPersistentManifold_validContactDistance (ff-pointer self) pt))

(cl:defmethod refresh-contact-points ((self bt-persistent-manifold) (trA bt-transform) (trB bt-transform))
  (btPersistentManifold_refreshContactPoints (ff-pointer self) trA trB))

(cl:defmethod clear-manifold ((self bt-persistent-manifold))
  (btPersistentManifold_clearManifold (ff-pointer self)))


(cl:defclass bt-discrete-collision-detector-interface()
  ((ff-pointer :reader ff-pointer)))


(cl:defclass bt-storage-result()
  ((ff-pointer :reader ff-pointer)))


(cl:defclass bt-manifold-result()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-manifold-result) &key)
  (setf (slot-value obj 'ff-pointer) (new_btManifoldResult)))

(cl:defmethod initialize-instance :after ((obj bt-manifold-result) &key (body0 bt-collision-object) (body1 bt-collision-object))
  (setf (slot-value obj 'ff-pointer) (new_btManifoldResult body0 body1)))

(cl:defmethod set-persistent-manifold ((self bt-manifold-result) (manifoldPtr bt-persistent-manifold))
  (btManifoldResult_setPersistentManifold (ff-pointer self) manifoldPtr))

(cl:defmethod get-persistent-manifold ((self bt-manifold-result))
  (btManifoldResult_getPersistentManifold (ff-pointer self)))

(cl:defmethod get-persistent-manifold ((self bt-manifold-result))
  (btManifoldResult_getPersistentManifold (ff-pointer self)))

(cl:defmethod set-shape-identifiers-a ((self bt-manifold-result) (partId0 cl:integer) (index0 cl:integer))
  (btManifoldResult_setShapeIdentifiersA (ff-pointer self) partId0 index0))

(cl:defmethod set-shape-identifiers-b ((self bt-manifold-result) (partId1 cl:integer) (index1 cl:integer))
  (btManifoldResult_setShapeIdentifiersB (ff-pointer self) partId1 index1))

(cl:defmethod add-contact-point ((self bt-manifold-result) (normalOnBInWorld bt-vector3) (pointInWorld bt-vector3) (depth cl:number))
  (btManifoldResult_addContactPoint (ff-pointer self) normalOnBInWorld pointInWorld depth))

(cl:defmethod refresh-contact-points ((self bt-manifold-result))
  (btManifoldResult_refreshContactPoints (ff-pointer self)))

(cl:defmethod get-body0-internal ((self bt-manifold-result))
  (btManifoldResult_getBody0Internal (ff-pointer self)))

(cl:defmethod get-body1-internal ((self bt-manifold-result))
  (btManifoldResult_getBody1Internal (ff-pointer self)))


(cl:defclass bt-broadphase-proxy()
  ((ff-pointer :reader ff-pointer)))


(cl:defclass bt-broadphase-pair()
  ((ff-pointer :reader ff-pointer)))


(cl:defclass bt-broadphase-pair-sort-predicate()
  ((ff-pointer :reader ff-pointer)))

(cl:shadow "()")
(cl:defmethod () ((self bt-broadphase-pair-sort-predicate) (a bt-broadphase-pair) (b bt-broadphase-pair))
  (btBroadphasePairSortPredicate___funcall__ (ff-pointer self) a b))

(cl:defmethod initialize-instance :after ((obj bt-broadphase-pair-sort-predicate) &key)
  (setf (slot-value obj 'ff-pointer) (new_btBroadphasePairSortPredicate)))


(cl:defclass bt-collision-algorithm-create-func()
  ((ff-pointer :reader ff-pointer)))


(cl:defclass bt-collision-dispatcher(btDispatcher)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod get-dispatcher-flags ((self bt-collision-dispatcher))
  (btCollisionDispatcher_getDispatcherFlags (ff-pointer self)))

(cl:defmethod set-dispatcher-flags ((self bt-collision-dispatcher) (flags cl:integer))
  (btCollisionDispatcher_setDispatcherFlags (ff-pointer self) flags))

(cl:defmethod register-collision-create-func ((self bt-collision-dispatcher) (proxyType0 cl:integer) (proxyType1 cl:integer) (createFunc bt-collision-algorithm-create-func))
  (btCollisionDispatcher_registerCollisionCreateFunc (ff-pointer self) proxyType0 proxyType1 createFunc))

(cl:defmethod get-num-manifolds ((self bt-collision-dispatcher))
  (btCollisionDispatcher_getNumManifolds (ff-pointer self)))

(cl:defmethod get-internal-manifold-pointer ((self bt-collision-dispatcher))
  (btCollisionDispatcher_getInternalManifoldPointer (ff-pointer self)))

(cl:defmethod get-manifold-by-index-internal ((self bt-collision-dispatcher) (index cl:integer))
  (btCollisionDispatcher_getManifoldByIndexInternal (ff-pointer self) index))

(cl:defmethod get-manifold-by-index-internal ((self bt-collision-dispatcher) (index cl:integer))
  (btCollisionDispatcher_getManifoldByIndexInternal (ff-pointer self) index))

(cl:defmethod initialize-instance :after ((obj bt-collision-dispatcher) &key collisionConfiguration)
  (setf (slot-value obj 'ff-pointer) (new_btCollisionDispatcher collisionConfiguration)))

(cl:defmethod get-new-manifold ((self bt-collision-dispatcher) b0 b1)
  (btCollisionDispatcher_getNewManifold (ff-pointer self) b0 b1))

(cl:defmethod release-manifold ((self bt-collision-dispatcher) (manifold bt-persistent-manifold))
  (btCollisionDispatcher_releaseManifold (ff-pointer self) manifold))

(cl:defmethod clear-manifold ((self bt-collision-dispatcher) (manifold bt-persistent-manifold))
  (btCollisionDispatcher_clearManifold (ff-pointer self) manifold))

(cl:defmethod find-algorithm ((self bt-collision-dispatcher) (body0 bt-collision-object) (body1 bt-collision-object) (sharedManifold bt-persistent-manifold))
  (btCollisionDispatcher_findAlgorithm (ff-pointer self) body0 body1 sharedManifold))

(cl:defmethod find-algorithm ((self bt-collision-dispatcher) (body0 bt-collision-object) (body1 bt-collision-object))
  (btCollisionDispatcher_findAlgorithm (ff-pointer self) body0 body1))

(cl:defmethod needs-collision ((self bt-collision-dispatcher) (body0 bt-collision-object) (body1 bt-collision-object))
  (btCollisionDispatcher_needsCollision (ff-pointer self) body0 body1))

(cl:defmethod needs-response ((self bt-collision-dispatcher) (body0 bt-collision-object) (body1 bt-collision-object))
  (btCollisionDispatcher_needsResponse (ff-pointer self) body0 body1))

(cl:defmethod dispatch-all-collision-pairs ((self bt-collision-dispatcher) pairCache (dispatchInfo bt-dispatcher-info) (dispatcher bt-dispatcher))
  (btCollisionDispatcher_dispatchAllCollisionPairs (ff-pointer self) pairCache dispatchInfo dispatcher))

(cl:defmethod set-near-callback ((self bt-collision-dispatcher) nearCallback)
  (btCollisionDispatcher_setNearCallback (ff-pointer self) nearCallback))

(cl:defmethod get-near-callback ((self bt-collision-dispatcher))
  (btCollisionDispatcher_getNearCallback (ff-pointer self)))

(cl:defmethod allocate-collision-algorithm ((self bt-collision-dispatcher) (size cl:integer))
  (btCollisionDispatcher_allocateCollisionAlgorithm (ff-pointer self) size))

(cl:defmethod free-collision-algorithm ((self bt-collision-dispatcher) ptr)
  (btCollisionDispatcher_freeCollisionAlgorithm (ff-pointer self) ptr))

(cl:defmethod get-collision-configuration ((self bt-collision-dispatcher))
  (btCollisionDispatcher_getCollisionConfiguration (ff-pointer self)))

(cl:defmethod get-collision-configuration ((self bt-collision-dispatcher))
  (btCollisionDispatcher_getCollisionConfiguration (ff-pointer self)))

(cl:defmethod set-collision-configuration ((self bt-collision-dispatcher) config)
  (btCollisionDispatcher_setCollisionConfiguration (ff-pointer self) config))

(cl:defmethod get-internal-manifold-pool ((self bt-collision-dispatcher))
  (btCollisionDispatcher_getInternalManifoldPool (ff-pointer self)))

(cl:defmethod get-internal-manifold-pool ((self bt-collision-dispatcher))
  (btCollisionDispatcher_getInternalManifoldPool (ff-pointer self)))


(cl:defclass bt-broadphase-aabb-callback()
  ((ff-pointer :reader ff-pointer)))


(cl:defclass bt-broadphase-ray-callback(btBroadphaseAabbCallback)
  ((ff-pointer :reader ff-pointer)))


(cl:defclass bt-broadphase-interface()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod create-proxy ((self bt-broadphase-interface) (aabbMin bt-vector3) (aabbMax bt-vector3) (shapeType cl:integer) userPtr (collisionFilterGroup cl:integer) (collisionFilterMask cl:integer) (dispatcher bt-dispatcher) multiSapProxy)
  (btBroadphaseInterface_createProxy (ff-pointer self) aabbMin aabbMax shapeType userPtr collisionFilterGroup collisionFilterMask dispatcher multiSapProxy))

(cl:defmethod destroy-proxy ((self bt-broadphase-interface) (proxy bt-broadphase-proxy) (dispatcher bt-dispatcher))
  (btBroadphaseInterface_destroyProxy (ff-pointer self) proxy dispatcher))

(cl:defmethod set-aabb ((self bt-broadphase-interface) (proxy bt-broadphase-proxy) (aabbMin bt-vector3) (aabbMax bt-vector3) (dispatcher bt-dispatcher))
  (btBroadphaseInterface_setAabb (ff-pointer self) proxy aabbMin aabbMax dispatcher))

(cl:defmethod get-aabb ((self bt-broadphase-interface) (proxy bt-broadphase-proxy) (aabbMin bt-vector3) (aabbMax bt-vector3))
  (btBroadphaseInterface_getAabb (ff-pointer self) proxy aabbMin aabbMax))

(cl:defmethod ray-test ((self bt-broadphase-interface) (rayFrom bt-vector3) (rayTo bt-vector3) (rayCallback bt-broadphase-ray-callback) (aabbMin bt-vector3) (aabbMax bt-vector3))
  (btBroadphaseInterface_rayTest (ff-pointer self) rayFrom rayTo rayCallback aabbMin aabbMax))

(cl:defmethod ray-test ((self bt-broadphase-interface) (rayFrom bt-vector3) (rayTo bt-vector3) (rayCallback bt-broadphase-ray-callback) (aabbMin bt-vector3))
  (btBroadphaseInterface_rayTest (ff-pointer self) rayFrom rayTo rayCallback aabbMin))

(cl:defmethod ray-test ((self bt-broadphase-interface) (rayFrom bt-vector3) (rayTo bt-vector3) (rayCallback bt-broadphase-ray-callback))
  (btBroadphaseInterface_rayTest (ff-pointer self) rayFrom rayTo rayCallback))

(cl:defmethod aabb-test ((self bt-broadphase-interface) (aabbMin bt-vector3) (aabbMax bt-vector3) (callback bt-broadphase-aabb-callback))
  (btBroadphaseInterface_aabbTest (ff-pointer self) aabbMin aabbMax callback))

(cl:defmethod calculate-overlapping-pairs ((self bt-broadphase-interface) (dispatcher bt-dispatcher))
  (btBroadphaseInterface_calculateOverlappingPairs (ff-pointer self) dispatcher))

(cl:defmethod get-overlapping-pair-cache ((self bt-broadphase-interface))
  (btBroadphaseInterface_getOverlappingPairCache (ff-pointer self)))

(cl:defmethod get-overlapping-pair-cache ((self bt-broadphase-interface))
  (btBroadphaseInterface_getOverlappingPairCache (ff-pointer self)))

(cl:defmethod get-broadphase-aabb ((self bt-broadphase-interface) (aabbMin bt-vector3) (aabbMax bt-vector3))
  (btBroadphaseInterface_getBroadphaseAabb (ff-pointer self) aabbMin aabbMax))

(cl:defmethod reset-pool ((self bt-broadphase-interface) (dispatcher bt-dispatcher))
  (btBroadphaseInterface_resetPool (ff-pointer self) dispatcher))

(cl:defmethod print-stats ((self bt-broadphase-interface))
  (btBroadphaseInterface_printStats (ff-pointer self)))


(cl:defclass bt-overlapping-pair-callback()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod add-overlapping-pair ((self bt-overlapping-pair-callback) (proxy0 bt-broadphase-proxy) (proxy1 bt-broadphase-proxy))
  (btOverlappingPairCallback_addOverlappingPair (ff-pointer self) proxy0 proxy1))

(cl:defmethod remove-overlapping-pair ((self bt-overlapping-pair-callback) (proxy0 bt-broadphase-proxy) (proxy1 bt-broadphase-proxy) (dispatcher bt-dispatcher))
  (btOverlappingPairCallback_removeOverlappingPair (ff-pointer self) proxy0 proxy1 dispatcher))

(cl:defmethod remove-overlapping-pairs-containing-proxy ((self bt-overlapping-pair-callback) (proxy0 bt-broadphase-proxy) (dispatcher bt-dispatcher))
  (btOverlappingPairCallback_removeOverlappingPairsContainingProxy (ff-pointer self) proxy0 dispatcher))


(cl:defclass bt-overlap-callback()
  ((ff-pointer :reader ff-pointer)))


(cl:defclass bt-overlap-filter-callback()
  ((ff-pointer :reader ff-pointer)))


(cl:defclass bt-overlapping-pair-cache(btOverlappingPairCallback)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod get-overlapping-pair-array-ptr ((self bt-overlapping-pair-cache))
  (btOverlappingPairCache_getOverlappingPairArrayPtr (ff-pointer self)))

(cl:defmethod get-overlapping-pair-array-ptr ((self bt-overlapping-pair-cache))
  (btOverlappingPairCache_getOverlappingPairArrayPtr (ff-pointer self)))

(cl:defmethod get-overlapping-pair-array ((self bt-overlapping-pair-cache))
  (btOverlappingPairCache_getOverlappingPairArray (ff-pointer self)))

(cl:defmethod clean-overlapping-pair ((self bt-overlapping-pair-cache) (pair bt-broadphase-pair) (dispatcher bt-dispatcher))
  (btOverlappingPairCache_cleanOverlappingPair (ff-pointer self) pair dispatcher))

(cl:defmethod get-num-overlapping-pairs ((self bt-overlapping-pair-cache))
  (btOverlappingPairCache_getNumOverlappingPairs (ff-pointer self)))

(cl:defmethod clean-proxy-from-pairs ((self bt-overlapping-pair-cache) (proxy bt-broadphase-proxy) (dispatcher bt-dispatcher))
  (btOverlappingPairCache_cleanProxyFromPairs (ff-pointer self) proxy dispatcher))

(cl:defmethod set-overlap-filter-callback ((self bt-overlapping-pair-cache) (callback bt-overlap-filter-callback))
  (btOverlappingPairCache_setOverlapFilterCallback (ff-pointer self) callback))

(cl:defmethod process-all-overlapping-pairs ((self bt-overlapping-pair-cache) (arg1 bt-overlap-callback) (dispatcher bt-dispatcher))
  (btOverlappingPairCache_processAllOverlappingPairs (ff-pointer self) arg1 dispatcher))

(cl:defmethod find-pair ((self bt-overlapping-pair-cache) (proxy0 bt-broadphase-proxy) (proxy1 bt-broadphase-proxy))
  (btOverlappingPairCache_findPair (ff-pointer self) proxy0 proxy1))

(cl:defmethod has-deferred-removal ((self bt-overlapping-pair-cache))
  (btOverlappingPairCache_hasDeferredRemoval (ff-pointer self)))

(cl:defmethod set-internal-ghost-pair-callback ((self bt-overlapping-pair-cache) (ghostPairCallback bt-overlapping-pair-callback))
  (btOverlappingPairCache_setInternalGhostPairCallback (ff-pointer self) ghostPairCallback))

(cl:defmethod sort-overlapping-pairs ((self bt-overlapping-pair-cache) (dispatcher bt-dispatcher))
  (btOverlappingPairCache_sortOverlappingPairs (ff-pointer self) dispatcher))


(cl:defclass bt-hashed-overlapping-pair-cache(btOverlappingPairCache)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-hashed-overlapping-pair-cache) &key)
  (setf (slot-value obj 'ff-pointer) (new_btHashedOverlappingPairCache)))

(cl:defmethod remove-overlapping-pairs-containing-proxy ((self bt-hashed-overlapping-pair-cache) (proxy bt-broadphase-proxy) (dispatcher bt-dispatcher))
  (btHashedOverlappingPairCache_removeOverlappingPairsContainingProxy (ff-pointer self) proxy dispatcher))

(cl:defmethod remove-overlapping-pair ((self bt-hashed-overlapping-pair-cache) (proxy0 bt-broadphase-proxy) (proxy1 bt-broadphase-proxy) (dispatcher bt-dispatcher))
  (btHashedOverlappingPairCache_removeOverlappingPair (ff-pointer self) proxy0 proxy1 dispatcher))

(cl:defmethod needs-broadphase-collision ((self bt-hashed-overlapping-pair-cache) (proxy0 bt-broadphase-proxy) (proxy1 bt-broadphase-proxy))
  (btHashedOverlappingPairCache_needsBroadphaseCollision (ff-pointer self) proxy0 proxy1))

(cl:defmethod add-overlapping-pair ((self bt-hashed-overlapping-pair-cache) (proxy0 bt-broadphase-proxy) (proxy1 bt-broadphase-proxy))
  (btHashedOverlappingPairCache_addOverlappingPair (ff-pointer self) proxy0 proxy1))

(cl:defmethod clean-proxy-from-pairs ((self bt-hashed-overlapping-pair-cache) (proxy bt-broadphase-proxy) (dispatcher bt-dispatcher))
  (btHashedOverlappingPairCache_cleanProxyFromPairs (ff-pointer self) proxy dispatcher))

(cl:defmethod process-all-overlapping-pairs ((self bt-hashed-overlapping-pair-cache) (arg1 bt-overlap-callback) (dispatcher bt-dispatcher))
  (btHashedOverlappingPairCache_processAllOverlappingPairs (ff-pointer self) arg1 dispatcher))

(cl:defmethod get-overlapping-pair-array-ptr ((self bt-hashed-overlapping-pair-cache))
  (btHashedOverlappingPairCache_getOverlappingPairArrayPtr (ff-pointer self)))

(cl:defmethod get-overlapping-pair-array-ptr ((self bt-hashed-overlapping-pair-cache))
  (btHashedOverlappingPairCache_getOverlappingPairArrayPtr (ff-pointer self)))

(cl:defmethod get-overlapping-pair-array ((self bt-hashed-overlapping-pair-cache))
  (btHashedOverlappingPairCache_getOverlappingPairArray (ff-pointer self)))

(cl:defmethod get-overlapping-pair-array ((self bt-hashed-overlapping-pair-cache))
  (btHashedOverlappingPairCache_getOverlappingPairArray (ff-pointer self)))

(cl:defmethod clean-overlapping-pair ((self bt-hashed-overlapping-pair-cache) (pair bt-broadphase-pair) (dispatcher bt-dispatcher))
  (btHashedOverlappingPairCache_cleanOverlappingPair (ff-pointer self) pair dispatcher))

(cl:defmethod find-pair ((self bt-hashed-overlapping-pair-cache) (proxy0 bt-broadphase-proxy) (proxy1 bt-broadphase-proxy))
  (btHashedOverlappingPairCache_findPair (ff-pointer self) proxy0 proxy1))

(cl:defmethod get-count ((self bt-hashed-overlapping-pair-cache))
  (btHashedOverlappingPairCache_GetCount (ff-pointer self)))

(cl:defmethod get-overlap-filter-callback ((self bt-hashed-overlapping-pair-cache))
  (btHashedOverlappingPairCache_getOverlapFilterCallback (ff-pointer self)))

(cl:defmethod set-overlap-filter-callback ((self bt-hashed-overlapping-pair-cache) (callback bt-overlap-filter-callback))
  (btHashedOverlappingPairCache_setOverlapFilterCallback (ff-pointer self) callback))

(cl:defmethod get-num-overlapping-pairs ((self bt-hashed-overlapping-pair-cache))
  (btHashedOverlappingPairCache_getNumOverlappingPairs (ff-pointer self)))


(cl:defclass bt-sorted-overlapping-pair-cache(btOverlappingPairCache)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-sorted-overlapping-pair-cache) &key)
  (setf (slot-value obj 'ff-pointer) (new_btSortedOverlappingPairCache)))

(cl:defmethod process-all-overlapping-pairs ((self bt-sorted-overlapping-pair-cache) (arg1 bt-overlap-callback) (dispatcher bt-dispatcher))
  (btSortedOverlappingPairCache_processAllOverlappingPairs (ff-pointer self) arg1 dispatcher))

(cl:defmethod remove-overlapping-pair ((self bt-sorted-overlapping-pair-cache) (proxy0 bt-broadphase-proxy) (proxy1 bt-broadphase-proxy) (dispatcher bt-dispatcher))
  (btSortedOverlappingPairCache_removeOverlappingPair (ff-pointer self) proxy0 proxy1 dispatcher))

(cl:defmethod clean-overlapping-pair ((self bt-sorted-overlapping-pair-cache) (pair bt-broadphase-pair) (dispatcher bt-dispatcher))
  (btSortedOverlappingPairCache_cleanOverlappingPair (ff-pointer self) pair dispatcher))

(cl:defmethod add-overlapping-pair ((self bt-sorted-overlapping-pair-cache) (proxy0 bt-broadphase-proxy) (proxy1 bt-broadphase-proxy))
  (btSortedOverlappingPairCache_addOverlappingPair (ff-pointer self) proxy0 proxy1))

(cl:defmethod find-pair ((self bt-sorted-overlapping-pair-cache) (proxy0 bt-broadphase-proxy) (proxy1 bt-broadphase-proxy))
  (btSortedOverlappingPairCache_findPair (ff-pointer self) proxy0 proxy1))

(cl:defmethod clean-proxy-from-pairs ((self bt-sorted-overlapping-pair-cache) (proxy bt-broadphase-proxy) (dispatcher bt-dispatcher))
  (btSortedOverlappingPairCache_cleanProxyFromPairs (ff-pointer self) proxy dispatcher))

(cl:defmethod remove-overlapping-pairs-containing-proxy ((self bt-sorted-overlapping-pair-cache) (proxy bt-broadphase-proxy) (dispatcher bt-dispatcher))
  (btSortedOverlappingPairCache_removeOverlappingPairsContainingProxy (ff-pointer self) proxy dispatcher))

(cl:defmethod needs-broadphase-collision ((self bt-sorted-overlapping-pair-cache) (proxy0 bt-broadphase-proxy) (proxy1 bt-broadphase-proxy))
  (btSortedOverlappingPairCache_needsBroadphaseCollision (ff-pointer self) proxy0 proxy1))

(cl:defmethod get-overlapping-pair-array ((self bt-sorted-overlapping-pair-cache))
  (btSortedOverlappingPairCache_getOverlappingPairArray (ff-pointer self)))

(cl:defmethod get-overlapping-pair-array ((self bt-sorted-overlapping-pair-cache))
  (btSortedOverlappingPairCache_getOverlappingPairArray (ff-pointer self)))

(cl:defmethod get-overlapping-pair-array-ptr ((self bt-sorted-overlapping-pair-cache))
  (btSortedOverlappingPairCache_getOverlappingPairArrayPtr (ff-pointer self)))

(cl:defmethod get-overlapping-pair-array-ptr ((self bt-sorted-overlapping-pair-cache))
  (btSortedOverlappingPairCache_getOverlappingPairArrayPtr (ff-pointer self)))

(cl:defmethod get-num-overlapping-pairs ((self bt-sorted-overlapping-pair-cache))
  (btSortedOverlappingPairCache_getNumOverlappingPairs (ff-pointer self)))

(cl:defmethod get-overlap-filter-callback ((self bt-sorted-overlapping-pair-cache))
  (btSortedOverlappingPairCache_getOverlapFilterCallback (ff-pointer self)))

(cl:defmethod set-overlap-filter-callback ((self bt-sorted-overlapping-pair-cache) (callback bt-overlap-filter-callback))
  (btSortedOverlappingPairCache_setOverlapFilterCallback (ff-pointer self) callback))

(cl:defmethod has-deferred-removal ((self bt-sorted-overlapping-pair-cache))
  (btSortedOverlappingPairCache_hasDeferredRemoval (ff-pointer self)))

(cl:defmethod set-internal-ghost-pair-callback ((self bt-sorted-overlapping-pair-cache) (ghostPairCallback bt-overlapping-pair-callback))
  (btSortedOverlappingPairCache_setInternalGhostPairCallback (ff-pointer self) ghostPairCallback))

(cl:defmethod sort-overlapping-pairs ((self bt-sorted-overlapping-pair-cache) (dispatcher bt-dispatcher))
  (btSortedOverlappingPairCache_sortOverlappingPairs (ff-pointer self) dispatcher))


(cl:defclass bt-null-pair-cache(btOverlappingPairCache)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod get-overlapping-pair-array-ptr ((self bt-null-pair-cache))
  (btNullPairCache_getOverlappingPairArrayPtr (ff-pointer self)))

(cl:defmethod get-overlapping-pair-array-ptr ((self bt-null-pair-cache))
  (btNullPairCache_getOverlappingPairArrayPtr (ff-pointer self)))

(cl:defmethod get-overlapping-pair-array ((self bt-null-pair-cache))
  (btNullPairCache_getOverlappingPairArray (ff-pointer self)))

(cl:defmethod clean-overlapping-pair ((self bt-null-pair-cache) (arg1 bt-broadphase-pair) (arg2 bt-dispatcher))
  (btNullPairCache_cleanOverlappingPair (ff-pointer self) arg1 arg2))

(cl:defmethod get-num-overlapping-pairs ((self bt-null-pair-cache))
  (btNullPairCache_getNumOverlappingPairs (ff-pointer self)))

(cl:defmethod clean-proxy-from-pairs ((self bt-null-pair-cache) (arg1 bt-broadphase-proxy) (arg2 bt-dispatcher))
  (btNullPairCache_cleanProxyFromPairs (ff-pointer self) arg1 arg2))

(cl:defmethod set-overlap-filter-callback ((self bt-null-pair-cache) (arg1 bt-overlap-filter-callback))
  (btNullPairCache_setOverlapFilterCallback (ff-pointer self) arg1))

(cl:defmethod process-all-overlapping-pairs ((self bt-null-pair-cache) (arg1 bt-overlap-callback) (arg2 bt-dispatcher))
  (btNullPairCache_processAllOverlappingPairs (ff-pointer self) arg1 arg2))

(cl:defmethod find-pair ((self bt-null-pair-cache) (arg1 bt-broadphase-proxy) (arg2 bt-broadphase-proxy))
  (btNullPairCache_findPair (ff-pointer self) arg1 arg2))

(cl:defmethod has-deferred-removal ((self bt-null-pair-cache))
  (btNullPairCache_hasDeferredRemoval (ff-pointer self)))

(cl:defmethod set-internal-ghost-pair-callback ((self bt-null-pair-cache) (arg1 bt-overlapping-pair-callback))
  (btNullPairCache_setInternalGhostPairCallback (ff-pointer self) arg1))

(cl:defmethod add-overlapping-pair ((self bt-null-pair-cache) (arg1 bt-broadphase-proxy) (arg2 bt-broadphase-proxy))
  (btNullPairCache_addOverlappingPair (ff-pointer self) arg1 arg2))

(cl:defmethod remove-overlapping-pair ((self bt-null-pair-cache) (arg1 bt-broadphase-proxy) (arg2 bt-broadphase-proxy) (arg3 bt-dispatcher))
  (btNullPairCache_removeOverlappingPair (ff-pointer self) arg1 arg2 arg3))

(cl:defmethod remove-overlapping-pairs-containing-proxy ((self bt-null-pair-cache) (arg1 bt-broadphase-proxy) (arg2 bt-dispatcher))
  (btNullPairCache_removeOverlappingPairsContainingProxy (ff-pointer self) arg1 arg2))

(cl:defmethod sort-overlapping-pairs ((self bt-null-pair-cache) (dispatcher bt-dispatcher))
  (btNullPairCache_sortOverlappingPairs (ff-pointer self) dispatcher))

(cl:defmethod initialize-instance :after ((obj bt-null-pair-cache) &key)
  (setf (slot-value obj 'ff-pointer) (new_btNullPairCache)))


(cl:defclass bt-collision-world()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-collision-world) &key (dispatcher bt-dispatcher) (broadphasePairCache bt-broadphase-interface) collisionConfiguration)
  (setf (slot-value obj 'ff-pointer) (new_btCollisionWorld dispatcher broadphasePairCache collisionConfiguration)))

(cl:defmethod set-broadphase ((self bt-collision-world) (pairCache bt-broadphase-interface))
  (btCollisionWorld_setBroadphase (ff-pointer self) pairCache))

(cl:defmethod get-broadphase ((self bt-collision-world))
  (btCollisionWorld_getBroadphase (ff-pointer self)))

(cl:defmethod get-broadphase ((self bt-collision-world))
  (btCollisionWorld_getBroadphase (ff-pointer self)))

(cl:defmethod get-pair-cache ((self bt-collision-world))
  (btCollisionWorld_getPairCache (ff-pointer self)))

(cl:defmethod get-dispatcher ((self bt-collision-world))
  (btCollisionWorld_getDispatcher (ff-pointer self)))

(cl:defmethod get-dispatcher ((self bt-collision-world))
  (btCollisionWorld_getDispatcher (ff-pointer self)))

(cl:defmethod update-single-aabb ((self bt-collision-world) (colObj bt-collision-object))
  (btCollisionWorld_updateSingleAabb (ff-pointer self) colObj))

(cl:defmethod update-aabbs ((self bt-collision-world))
  (btCollisionWorld_updateAabbs (ff-pointer self)))

(cl:defmethod set-debug-drawer ((self bt-collision-world) debugDrawer)
  (btCollisionWorld_setDebugDrawer (ff-pointer self) debugDrawer))

(cl:defmethod get-debug-drawer ((self bt-collision-world))
  (btCollisionWorld_getDebugDrawer (ff-pointer self)))

(cl:defmethod debug-draw-world ((self bt-collision-world))
  (btCollisionWorld_debugDrawWorld (ff-pointer self)))

(cl:defmethod debug-draw-object ((self bt-collision-world) (worldTransform bt-transform) shape (color bt-vector3))
  (btCollisionWorld_debugDrawObject (ff-pointer self) worldTransform shape color))

(cl:defmethod get-num-collision-objects ((self bt-collision-world))
  (btCollisionWorld_getNumCollisionObjects (ff-pointer self)))

(cl:defmethod ray-test ((self bt-collision-world) (rayFromWorld bt-vector3) (rayToWorld bt-vector3) resultCallback)
  (btCollisionWorld_rayTest (ff-pointer self) rayFromWorld rayToWorld resultCallback))

(cl:defmethod convex-sweep-test ((self bt-collision-world) castShape (from bt-transform) (to bt-transform) resultCallback (allowedCcdPenetration cl:number))
  (btCollisionWorld_convexSweepTest (ff-pointer self) castShape from to resultCallback allowedCcdPenetration))

(cl:defmethod convex-sweep-test ((self bt-collision-world) castShape (from bt-transform) (to bt-transform) resultCallback)
  (btCollisionWorld_convexSweepTest (ff-pointer self) castShape from to resultCallback))

(cl:defmethod contact-test ((self bt-collision-world) (colObj bt-collision-object) resultCallback)
  (btCollisionWorld_contactTest (ff-pointer self) colObj resultCallback))

(cl:defmethod contact-pair-test ((self bt-collision-world) (colObjA bt-collision-object) (colObjB bt-collision-object) resultCallback)
  (btCollisionWorld_contactPairTest (ff-pointer self) colObjA colObjB resultCallback))

(cl:defmethod add-collision-object ((self bt-collision-world) (collisionObject bt-collision-object) (collisionFilterGroup cl:integer) (collisionFilterMask cl:integer))
  (btCollisionWorld_addCollisionObject (ff-pointer self) collisionObject collisionFilterGroup collisionFilterMask))

(cl:defmethod add-collision-object ((self bt-collision-world) (collisionObject bt-collision-object) (collisionFilterGroup cl:integer))
  (btCollisionWorld_addCollisionObject (ff-pointer self) collisionObject collisionFilterGroup))

(cl:defmethod add-collision-object ((self bt-collision-world) (collisionObject bt-collision-object))
  (btCollisionWorld_addCollisionObject (ff-pointer self) collisionObject))

(cl:defmethod get-collision-object-array ((self bt-collision-world))
  (btCollisionWorld_getCollisionObjectArray (ff-pointer self)))

(cl:defmethod get-collision-object-array ((self bt-collision-world))
  (btCollisionWorld_getCollisionObjectArray (ff-pointer self)))

(cl:defmethod remove-collision-object ((self bt-collision-world) (collisionObject bt-collision-object))
  (btCollisionWorld_removeCollisionObject (ff-pointer self) collisionObject))

(cl:defmethod perform-discrete-collision-detection ((self bt-collision-world))
  (btCollisionWorld_performDiscreteCollisionDetection (ff-pointer self)))

(cl:defmethod get-dispatch-info ((self bt-collision-world))
  (btCollisionWorld_getDispatchInfo (ff-pointer self)))

(cl:defmethod get-dispatch-info ((self bt-collision-world))
  (btCollisionWorld_getDispatchInfo (ff-pointer self)))

(cl:defmethod get-force-update-all-aabbs ((self bt-collision-world))
  (btCollisionWorld_getForceUpdateAllAabbs (ff-pointer self)))

(cl:defmethod set-force-update-all-aabbs ((self bt-collision-world) (forceUpdateAllAabbs t))
  (btCollisionWorld_setForceUpdateAllAabbs (ff-pointer self) forceUpdateAllAabbs))

(cl:defmethod serialize ((self bt-collision-world) serializer)
  (btCollisionWorld_serialize (ff-pointer self) serializer))


(cl:defclass bt-collision-shape()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod get-aabb ((self bt-collision-shape) (t-arg1 bt-transform) (aabbMin bt-vector3) (aabbMax bt-vector3))
  (btCollisionShape_getAabb (ff-pointer self) t-arg1 aabbMin aabbMax))

(cl:defmethod get-bounding-sphere ((self bt-collision-shape) (center bt-vector3) radius)
  (btCollisionShape_getBoundingSphere (ff-pointer self) center radius))

(cl:defmethod get-angular-motion-disc ((self bt-collision-shape))
  (btCollisionShape_getAngularMotionDisc (ff-pointer self)))

(cl:defmethod get-contact-breaking-threshold ((self bt-collision-shape) (defaultContactThresholdFactor cl:number))
  (btCollisionShape_getContactBreakingThreshold (ff-pointer self) defaultContactThresholdFactor))

(cl:defmethod calculate-temporal-aabb ((self bt-collision-shape) (curTrans bt-transform) (linvel bt-vector3) (angvel bt-vector3) (timeStep cl:number) (temporalAabbMin bt-vector3) (temporalAabbMax bt-vector3))
  (btCollisionShape_calculateTemporalAabb (ff-pointer self) curTrans linvel angvel timeStep temporalAabbMin temporalAabbMax))

(cl:defmethod is-polyhedral ((self bt-collision-shape))
  (btCollisionShape_isPolyhedral (ff-pointer self)))

(cl:defmethod is-convex2d ((self bt-collision-shape))
  (btCollisionShape_isConvex2d (ff-pointer self)))

(cl:defmethod is-convex ((self bt-collision-shape))
  (btCollisionShape_isConvex (ff-pointer self)))

(cl:defmethod is-non-moving ((self bt-collision-shape))
  (btCollisionShape_isNonMoving (ff-pointer self)))

(cl:defmethod is-concave ((self bt-collision-shape))
  (btCollisionShape_isConcave (ff-pointer self)))

(cl:defmethod is-compound ((self bt-collision-shape))
  (btCollisionShape_isCompound (ff-pointer self)))

(cl:defmethod is-soft-body ((self bt-collision-shape))
  (btCollisionShape_isSoftBody (ff-pointer self)))

(cl:defmethod is-infinite ((self bt-collision-shape))
  (btCollisionShape_isInfinite (ff-pointer self)))

(cl:defmethod set-local-scaling ((self bt-collision-shape) (scaling bt-vector3))
  (btCollisionShape_setLocalScaling (ff-pointer self) scaling))

(cl:defmethod get-local-scaling ((self bt-collision-shape))
  (btCollisionShape_getLocalScaling (ff-pointer self)))

(cl:defmethod calculate-local-inertia ((self bt-collision-shape) (mass cl:number) (inertia bt-vector3))
  (btCollisionShape_calculateLocalInertia (ff-pointer self) mass inertia))

(cl:defmethod get-name ((self bt-collision-shape))
  (btCollisionShape_getName (ff-pointer self)))

(cl:defmethod get-shape-type ((self bt-collision-shape))
  (btCollisionShape_getShapeType (ff-pointer self)))

(cl:defmethod set-margin ((self bt-collision-shape) (margin cl:number))
  (btCollisionShape_setMargin (ff-pointer self) margin))

(cl:defmethod get-margin ((self bt-collision-shape))
  (btCollisionShape_getMargin (ff-pointer self)))

(cl:defmethod set-user-pointer ((self bt-collision-shape) userPtr)
  (btCollisionShape_setUserPointer (ff-pointer self) userPtr))

(cl:defmethod get-user-pointer ((self bt-collision-shape))
  (btCollisionShape_getUserPointer (ff-pointer self)))

(cl:defmethod calculate-serialize-buffer-size ((self bt-collision-shape))
  (btCollisionShape_calculateSerializeBufferSize (ff-pointer self)))

(cl:defmethod serialize ((self bt-collision-shape) dataBuffer serializer)
  (btCollisionShape_serialize (ff-pointer self) dataBuffer serializer))

(cl:defmethod serialize-single-shape ((self bt-collision-shape) serializer)
  (btCollisionShape_serializeSingleShape (ff-pointer self) serializer))


(cl:defclass bt-collision-shape-data()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-collision-shape-data) &key)
  (setf (slot-value obj 'ff-pointer) (new_btCollisionShapeData)))


(cl:defclass bt-convex-shape(btCollisionShape)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod local-get-supporting-vertex ((self bt-convex-shape) (vec bt-vector3))
  (btConvexShape_localGetSupportingVertex (ff-pointer self) vec))

(cl:defmethod local-get-supporting-vertex-without-margin ((self bt-convex-shape) (vec bt-vector3))
  (btConvexShape_localGetSupportingVertexWithoutMargin (ff-pointer self) vec))

(cl:defmethod local-get-support-vertex-without-margin-non-virtual ((self bt-convex-shape) (vec bt-vector3))
  (btConvexShape_localGetSupportVertexWithoutMarginNonVirtual (ff-pointer self) vec))

(cl:defmethod local-get-support-vertex-non-virtual ((self bt-convex-shape) (vec bt-vector3))
  (btConvexShape_localGetSupportVertexNonVirtual (ff-pointer self) vec))

(cl:defmethod get-margin-non-virtual ((self bt-convex-shape))
  (btConvexShape_getMarginNonVirtual (ff-pointer self)))

(cl:defmethod get-aabb-non-virtual ((self bt-convex-shape) (t-arg1 bt-transform) (aabbMin bt-vector3) (aabbMax bt-vector3))
  (btConvexShape_getAabbNonVirtual (ff-pointer self) t-arg1 aabbMin aabbMax))

(cl:defmethod project ((self bt-convex-shape) (trans bt-transform) (dir bt-vector3) min max)
  (btConvexShape_project (ff-pointer self) trans dir min max))

(cl:defmethod batched-unit-vector-get-supporting-vertex-without-margin ((self bt-convex-shape) (vectors bt-vector3) (supportVerticesOut bt-vector3) (numVectors cl:integer))
  (btConvexShape_batchedUnitVectorGetSupportingVertexWithoutMargin (ff-pointer self) vectors supportVerticesOut numVectors))

(cl:defmethod get-aabb ((self bt-convex-shape) (t-arg1 bt-transform) (aabbMin bt-vector3) (aabbMax bt-vector3))
  (btConvexShape_getAabb (ff-pointer self) t-arg1 aabbMin aabbMax))

(cl:defmethod get-aabb-slow ((self bt-convex-shape) (t-arg1 bt-transform) (aabbMin bt-vector3) (aabbMax bt-vector3))
  (btConvexShape_getAabbSlow (ff-pointer self) t-arg1 aabbMin aabbMax))

(cl:defmethod set-local-scaling ((self bt-convex-shape) (scaling bt-vector3))
  (btConvexShape_setLocalScaling (ff-pointer self) scaling))

(cl:defmethod get-local-scaling ((self bt-convex-shape))
  (btConvexShape_getLocalScaling (ff-pointer self)))

(cl:defmethod set-margin ((self bt-convex-shape) (margin cl:number))
  (btConvexShape_setMargin (ff-pointer self) margin))

(cl:defmethod get-margin ((self bt-convex-shape))
  (btConvexShape_getMargin (ff-pointer self)))

(cl:defmethod get-num-preferred-penetration-directions ((self bt-convex-shape))
  (btConvexShape_getNumPreferredPenetrationDirections (ff-pointer self)))

(cl:defmethod get-preferred-penetration-direction ((self bt-convex-shape) (index cl:integer) (penetrationVector bt-vector3))
  (btConvexShape_getPreferredPenetrationDirection (ff-pointer self) index penetrationVector))


(cl:defclass bt-convex-internal-shape(btConvexShape)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod local-get-supporting-vertex ((self bt-convex-internal-shape) (vec bt-vector3))
  (btConvexInternalShape_localGetSupportingVertex (ff-pointer self) vec))

(cl:defmethod get-implicit-shape-dimensions ((self bt-convex-internal-shape))
  (btConvexInternalShape_getImplicitShapeDimensions (ff-pointer self)))

(cl:defmethod set-implicit-shape-dimensions ((self bt-convex-internal-shape) (dimensions bt-vector3))
  (btConvexInternalShape_setImplicitShapeDimensions (ff-pointer self) dimensions))

(cl:defmethod set-safe-margin ((self bt-convex-internal-shape) (minDimension cl:number) (defaultMarginMultiplier cl:number))
  (btConvexInternalShape_setSafeMargin (ff-pointer self) minDimension defaultMarginMultiplier))

(cl:defmethod set-safe-margin ((self bt-convex-internal-shape) (minDimension cl:number))
  (btConvexInternalShape_setSafeMargin (ff-pointer self) minDimension))

(cl:defmethod set-safe-margin ((self bt-convex-internal-shape) (halfExtents bt-vector3) (defaultMarginMultiplier cl:number))
  (btConvexInternalShape_setSafeMargin (ff-pointer self) halfExtents defaultMarginMultiplier))

(cl:defmethod set-safe-margin ((self bt-convex-internal-shape) (halfExtents bt-vector3))
  (btConvexInternalShape_setSafeMargin (ff-pointer self) halfExtents))

(cl:defmethod get-aabb ((self bt-convex-internal-shape) (t-arg1 bt-transform) (aabbMin bt-vector3) (aabbMax bt-vector3))
  (btConvexInternalShape_getAabb (ff-pointer self) t-arg1 aabbMin aabbMax))

(cl:defmethod get-aabb-slow ((self bt-convex-internal-shape) (t-arg1 bt-transform) (aabbMin bt-vector3) (aabbMax bt-vector3))
  (btConvexInternalShape_getAabbSlow (ff-pointer self) t-arg1 aabbMin aabbMax))

(cl:defmethod set-local-scaling ((self bt-convex-internal-shape) (scaling bt-vector3))
  (btConvexInternalShape_setLocalScaling (ff-pointer self) scaling))

(cl:defmethod get-local-scaling ((self bt-convex-internal-shape))
  (btConvexInternalShape_getLocalScaling (ff-pointer self)))

(cl:defmethod get-local-scaling-nv ((self bt-convex-internal-shape))
  (btConvexInternalShape_getLocalScalingNV (ff-pointer self)))

(cl:defmethod set-margin ((self bt-convex-internal-shape) (margin cl:number))
  (btConvexInternalShape_setMargin (ff-pointer self) margin))

(cl:defmethod get-margin ((self bt-convex-internal-shape))
  (btConvexInternalShape_getMargin (ff-pointer self)))

(cl:defmethod get-margin-nv ((self bt-convex-internal-shape))
  (btConvexInternalShape_getMarginNV (ff-pointer self)))

(cl:defmethod get-num-preferred-penetration-directions ((self bt-convex-internal-shape))
  (btConvexInternalShape_getNumPreferredPenetrationDirections (ff-pointer self)))

(cl:defmethod get-preferred-penetration-direction ((self bt-convex-internal-shape) (index cl:integer) (penetrationVector bt-vector3))
  (btConvexInternalShape_getPreferredPenetrationDirection (ff-pointer self) index penetrationVector))

(cl:defmethod calculate-serialize-buffer-size ((self bt-convex-internal-shape))
  (btConvexInternalShape_calculateSerializeBufferSize (ff-pointer self)))

(cl:defmethod serialize ((self bt-convex-internal-shape) dataBuffer serializer)
  (btConvexInternalShape_serialize (ff-pointer self) dataBuffer serializer))


(cl:defclass bt-convex-internal-shape-data()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-convex-internal-shape-data) &key)
  (setf (slot-value obj 'ff-pointer) (new_btConvexInternalShapeData)))


(cl:defclass bt-convex-internal-aabb-caching-shape(btConvexInternalShape)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod set-local-scaling ((self bt-convex-internal-aabb-caching-shape) (scaling bt-vector3))
  (btConvexInternalAabbCachingShape_setLocalScaling (ff-pointer self) scaling))

(cl:defmethod get-aabb ((self bt-convex-internal-aabb-caching-shape) (t-arg1 bt-transform) (aabbMin bt-vector3) (aabbMax bt-vector3))
  (btConvexInternalAabbCachingShape_getAabb (ff-pointer self) t-arg1 aabbMin aabbMax))

(cl:defmethod recalc-local-aabb ((self bt-convex-internal-aabb-caching-shape))
  (btConvexInternalAabbCachingShape_recalcLocalAabb (ff-pointer self)))


(cl:defclass bt-polyhedral-convex-shape(btConvexInternalShape)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-polyhedral-features ((self bt-polyhedral-convex-shape))
  (btPolyhedralConvexShape_initializePolyhedralFeatures (ff-pointer self)))

(cl:defmethod get-convex-polyhedron ((self bt-polyhedral-convex-shape))
  (btPolyhedralConvexShape_getConvexPolyhedron (ff-pointer self)))

(cl:defmethod local-get-supporting-vertex-without-margin ((self bt-polyhedral-convex-shape) (vec bt-vector3))
  (btPolyhedralConvexShape_localGetSupportingVertexWithoutMargin (ff-pointer self) vec))

(cl:defmethod batched-unit-vector-get-supporting-vertex-without-margin ((self bt-polyhedral-convex-shape) (vectors bt-vector3) (supportVerticesOut bt-vector3) (numVectors cl:integer))
  (btPolyhedralConvexShape_batchedUnitVectorGetSupportingVertexWithoutMargin (ff-pointer self) vectors supportVerticesOut numVectors))

(cl:defmethod calculate-local-inertia ((self bt-polyhedral-convex-shape) (mass cl:number) (inertia bt-vector3))
  (btPolyhedralConvexShape_calculateLocalInertia (ff-pointer self) mass inertia))

(cl:defmethod get-num-vertices ((self bt-polyhedral-convex-shape))
  (btPolyhedralConvexShape_getNumVertices (ff-pointer self)))

(cl:defmethod get-num-edges ((self bt-polyhedral-convex-shape))
  (btPolyhedralConvexShape_getNumEdges (ff-pointer self)))

(cl:defmethod get-edge ((self bt-polyhedral-convex-shape) (i cl:integer) (pa bt-vector3) (pb bt-vector3))
  (btPolyhedralConvexShape_getEdge (ff-pointer self) i pa pb))

(cl:defmethod get-vertex ((self bt-polyhedral-convex-shape) (i cl:integer) (vtx bt-vector3))
  (btPolyhedralConvexShape_getVertex (ff-pointer self) i vtx))

(cl:defmethod get-num-planes ((self bt-polyhedral-convex-shape))
  (btPolyhedralConvexShape_getNumPlanes (ff-pointer self)))

(cl:defmethod get-plane ((self bt-polyhedral-convex-shape) (planeNormal bt-vector3) (planeSupport bt-vector3) (i cl:integer))
  (btPolyhedralConvexShape_getPlane (ff-pointer self) planeNormal planeSupport i))

(cl:defmethod is-inside ((self bt-polyhedral-convex-shape) (pt bt-vector3) (tolerance cl:number))
  (btPolyhedralConvexShape_isInside (ff-pointer self) pt tolerance))


(cl:defclass bt-polyhedral-convex-aabb-caching-shape(btPolyhedralConvexShape)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod get-nonvirtual-aabb ((self bt-polyhedral-convex-aabb-caching-shape) (trans bt-transform) (aabbMin bt-vector3) (aabbMax bt-vector3) (margin cl:number))
  (btPolyhedralConvexAabbCachingShape_getNonvirtualAabb (ff-pointer self) trans aabbMin aabbMax margin))

(cl:defmethod set-local-scaling ((self bt-polyhedral-convex-aabb-caching-shape) (scaling bt-vector3))
  (btPolyhedralConvexAabbCachingShape_setLocalScaling (ff-pointer self) scaling))

(cl:defmethod get-aabb ((self bt-polyhedral-convex-aabb-caching-shape) (t-arg1 bt-transform) (aabbMin bt-vector3) (aabbMax bt-vector3))
  (btPolyhedralConvexAabbCachingShape_getAabb (ff-pointer self) t-arg1 aabbMin aabbMax))

(cl:defmethod recalc-local-aabb ((self bt-polyhedral-convex-aabb-caching-shape))
  (btPolyhedralConvexAabbCachingShape_recalcLocalAabb (ff-pointer self)))


(cl:defclass bt-box-shape(btPolyhedralConvexShape)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod get-half-extents-with-margin ((self bt-box-shape))
  (btBoxShape_getHalfExtentsWithMargin (ff-pointer self)))

(cl:defmethod get-half-extents-without-margin ((self bt-box-shape))
  (btBoxShape_getHalfExtentsWithoutMargin (ff-pointer self)))

(cl:defmethod local-get-supporting-vertex ((self bt-box-shape) (vec bt-vector3))
  (btBoxShape_localGetSupportingVertex (ff-pointer self) vec))

(cl:defmethod local-get-supporting-vertex-without-margin ((self bt-box-shape) (vec bt-vector3))
  (btBoxShape_localGetSupportingVertexWithoutMargin (ff-pointer self) vec))

(cl:defmethod batched-unit-vector-get-supporting-vertex-without-margin ((self bt-box-shape) (vectors bt-vector3) (supportVerticesOut bt-vector3) (numVectors cl:integer))
  (btBoxShape_batchedUnitVectorGetSupportingVertexWithoutMargin (ff-pointer self) vectors supportVerticesOut numVectors))

(cl:defmethod initialize-instance :after ((obj bt-box-shape) &key (boxHalfExtents bt-vector3))
  (setf (slot-value obj 'ff-pointer) (new_btBoxShape boxHalfExtents)))

(cl:defmethod set-margin ((self bt-box-shape) (collisionMargin cl:number))
  (btBoxShape_setMargin (ff-pointer self) collisionMargin))

(cl:defmethod set-local-scaling ((self bt-box-shape) (scaling bt-vector3))
  (btBoxShape_setLocalScaling (ff-pointer self) scaling))

(cl:defmethod get-aabb ((self bt-box-shape) (t-arg1 bt-transform) (aabbMin bt-vector3) (aabbMax bt-vector3))
  (btBoxShape_getAabb (ff-pointer self) t-arg1 aabbMin aabbMax))

(cl:defmethod calculate-local-inertia ((self bt-box-shape) (mass cl:number) (inertia bt-vector3))
  (btBoxShape_calculateLocalInertia (ff-pointer self) mass inertia))

(cl:defmethod get-plane ((self bt-box-shape) (planeNormal bt-vector3) (planeSupport bt-vector3) (i cl:integer))
  (btBoxShape_getPlane (ff-pointer self) planeNormal planeSupport i))

(cl:defmethod get-num-planes ((self bt-box-shape))
  (btBoxShape_getNumPlanes (ff-pointer self)))

(cl:defmethod get-num-vertices ((self bt-box-shape))
  (btBoxShape_getNumVertices (ff-pointer self)))

(cl:defmethod get-num-edges ((self bt-box-shape))
  (btBoxShape_getNumEdges (ff-pointer self)))

(cl:defmethod get-vertex ((self bt-box-shape) (i cl:integer) (vtx bt-vector3))
  (btBoxShape_getVertex (ff-pointer self) i vtx))

(cl:defmethod get-plane-equation ((self bt-box-shape) (plane bt-vector4) (i cl:integer))
  (btBoxShape_getPlaneEquation (ff-pointer self) plane i))

(cl:defmethod get-edge ((self bt-box-shape) (i cl:integer) (pa bt-vector3) (pb bt-vector3))
  (btBoxShape_getEdge (ff-pointer self) i pa pb))

(cl:defmethod is-inside ((self bt-box-shape) (pt bt-vector3) (tolerance cl:number))
  (btBoxShape_isInside (ff-pointer self) pt tolerance))

(cl:defmethod get-name ((self bt-box-shape))
  (btBoxShape_getName (ff-pointer self)))

(cl:defmethod get-num-preferred-penetration-directions ((self bt-box-shape))
  (btBoxShape_getNumPreferredPenetrationDirections (ff-pointer self)))

(cl:defmethod get-preferred-penetration-direction ((self bt-box-shape) (index cl:integer) (penetrationVector bt-vector3))
  (btBoxShape_getPreferredPenetrationDirection (ff-pointer self) index penetrationVector))


(cl:defclass bt-sphere-shape(btConvexInternalShape)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-sphere-shape) &key (radius cl:number))
  (setf (slot-value obj 'ff-pointer) (new_btSphereShape radius)))

(cl:defmethod local-get-supporting-vertex ((self bt-sphere-shape) (vec bt-vector3))
  (btSphereShape_localGetSupportingVertex (ff-pointer self) vec))

(cl:defmethod local-get-supporting-vertex-without-margin ((self bt-sphere-shape) (vec bt-vector3))
  (btSphereShape_localGetSupportingVertexWithoutMargin (ff-pointer self) vec))

(cl:defmethod batched-unit-vector-get-supporting-vertex-without-margin ((self bt-sphere-shape) (vectors bt-vector3) (supportVerticesOut bt-vector3) (numVectors cl:integer))
  (btSphereShape_batchedUnitVectorGetSupportingVertexWithoutMargin (ff-pointer self) vectors supportVerticesOut numVectors))

(cl:defmethod calculate-local-inertia ((self bt-sphere-shape) (mass cl:number) (inertia bt-vector3))
  (btSphereShape_calculateLocalInertia (ff-pointer self) mass inertia))

(cl:defmethod get-aabb ((self bt-sphere-shape) (t-arg1 bt-transform) (aabbMin bt-vector3) (aabbMax bt-vector3))
  (btSphereShape_getAabb (ff-pointer self) t-arg1 aabbMin aabbMax))

(cl:defmethod get-radius ((self bt-sphere-shape))
  (btSphereShape_getRadius (ff-pointer self)))

(cl:defmethod set-unscaled-radius ((self bt-sphere-shape) (radius cl:number))
  (btSphereShape_setUnscaledRadius (ff-pointer self) radius))

(cl:defmethod get-name ((self bt-sphere-shape))
  (btSphereShape_getName (ff-pointer self)))

(cl:defmethod set-margin ((self bt-sphere-shape) (margin cl:number))
  (btSphereShape_setMargin (ff-pointer self) margin))

(cl:defmethod get-margin ((self bt-sphere-shape))
  (btSphereShape_getMargin (ff-pointer self)))


(cl:defclass bt-capsule-shape(btConvexInternalShape)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-capsule-shape) &key (radius cl:number) (height cl:number))
  (setf (slot-value obj 'ff-pointer) (new_btCapsuleShape radius height)))

(cl:defmethod calculate-local-inertia ((self bt-capsule-shape) (mass cl:number) (inertia bt-vector3))
  (btCapsuleShape_calculateLocalInertia (ff-pointer self) mass inertia))

(cl:defmethod local-get-supporting-vertex-without-margin ((self bt-capsule-shape) (vec bt-vector3))
  (btCapsuleShape_localGetSupportingVertexWithoutMargin (ff-pointer self) vec))

(cl:defmethod batched-unit-vector-get-supporting-vertex-without-margin ((self bt-capsule-shape) (vectors bt-vector3) (supportVerticesOut bt-vector3) (numVectors cl:integer))
  (btCapsuleShape_batchedUnitVectorGetSupportingVertexWithoutMargin (ff-pointer self) vectors supportVerticesOut numVectors))

(cl:defmethod set-margin ((self bt-capsule-shape) (collisionMargin cl:number))
  (btCapsuleShape_setMargin (ff-pointer self) collisionMargin))

(cl:defmethod get-aabb ((self bt-capsule-shape) (t-arg1 bt-transform) (aabbMin bt-vector3) (aabbMax bt-vector3))
  (btCapsuleShape_getAabb (ff-pointer self) t-arg1 aabbMin aabbMax))

(cl:defmethod get-name ((self bt-capsule-shape))
  (btCapsuleShape_getName (ff-pointer self)))

(cl:defmethod get-up-axis ((self bt-capsule-shape))
  (btCapsuleShape_getUpAxis (ff-pointer self)))

(cl:defmethod get-radius ((self bt-capsule-shape))
  (btCapsuleShape_getRadius (ff-pointer self)))

(cl:defmethod get-half-height ((self bt-capsule-shape))
  (btCapsuleShape_getHalfHeight (ff-pointer self)))

(cl:defmethod set-local-scaling ((self bt-capsule-shape) (scaling bt-vector3))
  (btCapsuleShape_setLocalScaling (ff-pointer self) scaling))

(cl:defmethod calculate-serialize-buffer-size ((self bt-capsule-shape))
  (btCapsuleShape_calculateSerializeBufferSize (ff-pointer self)))

(cl:defmethod serialize ((self bt-capsule-shape) dataBuffer serializer)
  (btCapsuleShape_serialize (ff-pointer self) dataBuffer serializer))


(cl:defclass bt-capsule-shape-x(btCapsuleShape)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-capsule-shape-x) &key (radius cl:number) (height cl:number))
  (setf (slot-value obj 'ff-pointer) (new_btCapsuleShapeX radius height)))

(cl:defmethod get-name ((self bt-capsule-shape-x))
  (btCapsuleShapeX_getName (ff-pointer self)))


(cl:defclass bt-capsule-shape-z(btCapsuleShape)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-capsule-shape-z) &key (radius cl:number) (height cl:number))
  (setf (slot-value obj 'ff-pointer) (new_btCapsuleShapeZ radius height)))

(cl:defmethod get-name ((self bt-capsule-shape-z))
  (btCapsuleShapeZ_getName (ff-pointer self)))


(cl:defclass bt-capsule-shape-data()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-capsule-shape-data) &key)
  (setf (slot-value obj 'ff-pointer) (new_btCapsuleShapeData)))


(cl:defclass bt-cylinder-shape(btConvexInternalShape)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod get-half-extents-with-margin ((self bt-cylinder-shape))
  (btCylinderShape_getHalfExtentsWithMargin (ff-pointer self)))

(cl:defmethod get-half-extents-without-margin ((self bt-cylinder-shape))
  (btCylinderShape_getHalfExtentsWithoutMargin (ff-pointer self)))

(cl:defmethod initialize-instance :after ((obj bt-cylinder-shape) &key (halfExtents bt-vector3))
  (setf (slot-value obj 'ff-pointer) (new_btCylinderShape halfExtents)))

(cl:defmethod get-aabb ((self bt-cylinder-shape) (t-arg1 bt-transform) (aabbMin bt-vector3) (aabbMax bt-vector3))
  (btCylinderShape_getAabb (ff-pointer self) t-arg1 aabbMin aabbMax))

(cl:defmethod calculate-local-inertia ((self bt-cylinder-shape) (mass cl:number) (inertia bt-vector3))
  (btCylinderShape_calculateLocalInertia (ff-pointer self) mass inertia))

(cl:defmethod local-get-supporting-vertex-without-margin ((self bt-cylinder-shape) (vec bt-vector3))
  (btCylinderShape_localGetSupportingVertexWithoutMargin (ff-pointer self) vec))

(cl:defmethod batched-unit-vector-get-supporting-vertex-without-margin ((self bt-cylinder-shape) (vectors bt-vector3) (supportVerticesOut bt-vector3) (numVectors cl:integer))
  (btCylinderShape_batchedUnitVectorGetSupportingVertexWithoutMargin (ff-pointer self) vectors supportVerticesOut numVectors))

(cl:defmethod set-margin ((self bt-cylinder-shape) (collisionMargin cl:number))
  (btCylinderShape_setMargin (ff-pointer self) collisionMargin))

(cl:defmethod local-get-supporting-vertex ((self bt-cylinder-shape) (vec bt-vector3))
  (btCylinderShape_localGetSupportingVertex (ff-pointer self) vec))

(cl:defmethod get-up-axis ((self bt-cylinder-shape))
  (btCylinderShape_getUpAxis (ff-pointer self)))

(cl:defmethod get-radius ((self bt-cylinder-shape))
  (btCylinderShape_getRadius (ff-pointer self)))

(cl:defmethod set-local-scaling ((self bt-cylinder-shape) (scaling bt-vector3))
  (btCylinderShape_setLocalScaling (ff-pointer self) scaling))

(cl:defmethod get-name ((self bt-cylinder-shape))
  (btCylinderShape_getName (ff-pointer self)))

(cl:defmethod calculate-serialize-buffer-size ((self bt-cylinder-shape))
  (btCylinderShape_calculateSerializeBufferSize (ff-pointer self)))

(cl:defmethod serialize ((self bt-cylinder-shape) dataBuffer serializer)
  (btCylinderShape_serialize (ff-pointer self) dataBuffer serializer))


(cl:defclass bt-cylinder-shape-x(btCylinderShape)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-cylinder-shape-x) &key (halfExtents bt-vector3))
  (setf (slot-value obj 'ff-pointer) (new_btCylinderShapeX halfExtents)))

(cl:defmethod local-get-supporting-vertex-without-margin ((self bt-cylinder-shape-x) (vec bt-vector3))
  (btCylinderShapeX_localGetSupportingVertexWithoutMargin (ff-pointer self) vec))

(cl:defmethod batched-unit-vector-get-supporting-vertex-without-margin ((self bt-cylinder-shape-x) (vectors bt-vector3) (supportVerticesOut bt-vector3) (numVectors cl:integer))
  (btCylinderShapeX_batchedUnitVectorGetSupportingVertexWithoutMargin (ff-pointer self) vectors supportVerticesOut numVectors))

(cl:defmethod get-name ((self bt-cylinder-shape-x))
  (btCylinderShapeX_getName (ff-pointer self)))

(cl:defmethod get-radius ((self bt-cylinder-shape-x))
  (btCylinderShapeX_getRadius (ff-pointer self)))


(cl:defclass bt-cylinder-shape-z(btCylinderShape)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-cylinder-shape-z) &key (halfExtents bt-vector3))
  (setf (slot-value obj 'ff-pointer) (new_btCylinderShapeZ halfExtents)))

(cl:defmethod local-get-supporting-vertex-without-margin ((self bt-cylinder-shape-z) (vec bt-vector3))
  (btCylinderShapeZ_localGetSupportingVertexWithoutMargin (ff-pointer self) vec))

(cl:defmethod batched-unit-vector-get-supporting-vertex-without-margin ((self bt-cylinder-shape-z) (vectors bt-vector3) (supportVerticesOut bt-vector3) (numVectors cl:integer))
  (btCylinderShapeZ_batchedUnitVectorGetSupportingVertexWithoutMargin (ff-pointer self) vectors supportVerticesOut numVectors))

(cl:defmethod get-name ((self bt-cylinder-shape-z))
  (btCylinderShapeZ_getName (ff-pointer self)))

(cl:defmethod get-radius ((self bt-cylinder-shape-z))
  (btCylinderShapeZ_getRadius (ff-pointer self)))


(cl:defclass bt-cylinder-shape-data()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-cylinder-shape-data) &key)
  (setf (slot-value obj 'ff-pointer) (new_btCylinderShapeData)))


(cl:defclass bt-cone-shape(btConvexInternalShape)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-cone-shape) &key (radius cl:number) (height cl:number))
  (setf (slot-value obj 'ff-pointer) (new_btConeShape radius height)))

(cl:defmethod local-get-supporting-vertex ((self bt-cone-shape) (vec bt-vector3))
  (btConeShape_localGetSupportingVertex (ff-pointer self) vec))

(cl:defmethod local-get-supporting-vertex-without-margin ((self bt-cone-shape) (vec bt-vector3))
  (btConeShape_localGetSupportingVertexWithoutMargin (ff-pointer self) vec))

(cl:defmethod batched-unit-vector-get-supporting-vertex-without-margin ((self bt-cone-shape) (vectors bt-vector3) (supportVerticesOut bt-vector3) (numVectors cl:integer))
  (btConeShape_batchedUnitVectorGetSupportingVertexWithoutMargin (ff-pointer self) vectors supportVerticesOut numVectors))

(cl:defmethod get-radius ((self bt-cone-shape))
  (btConeShape_getRadius (ff-pointer self)))

(cl:defmethod get-height ((self bt-cone-shape))
  (btConeShape_getHeight (ff-pointer self)))

(cl:defmethod calculate-local-inertia ((self bt-cone-shape) (mass cl:number) (inertia bt-vector3))
  (btConeShape_calculateLocalInertia (ff-pointer self) mass inertia))

(cl:defmethod get-name ((self bt-cone-shape))
  (btConeShape_getName (ff-pointer self)))

(cl:defmethod set-cone-up-index ((self bt-cone-shape) (upIndex cl:integer))
  (btConeShape_setConeUpIndex (ff-pointer self) upIndex))

(cl:defmethod get-cone-up-index ((self bt-cone-shape))
  (btConeShape_getConeUpIndex (ff-pointer self)))

(cl:defmethod set-local-scaling ((self bt-cone-shape) (scaling bt-vector3))
  (btConeShape_setLocalScaling (ff-pointer self) scaling))


(cl:defclass bt-cone-shape-x(btConeShape)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-cone-shape-x) &key (radius cl:number) (height cl:number))
  (setf (slot-value obj 'ff-pointer) (new_btConeShapeX radius height)))


(cl:defclass bt-cone-shape-z(btConeShape)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-cone-shape-z) &key (radius cl:number) (height cl:number))
  (setf (slot-value obj 'ff-pointer) (new_btConeShapeZ radius height)))


(cl:defclass bt-triangle-callback()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod process-triangle ((self bt-triangle-callback) (triangle bt-vector3) (partId cl:integer) (triangleIndex cl:integer))
  (btTriangleCallback_processTriangle (ff-pointer self) triangle partId triangleIndex))


(cl:defclass bt-internal-triangle-index-callback()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod internal-process-triangle-index ((self bt-internal-triangle-index-callback) (triangle bt-vector3) (partId cl:integer) (triangleIndex cl:integer))
  (btInternalTriangleIndexCallback_internalProcessTriangleIndex (ff-pointer self) triangle partId triangleIndex))


(cl:defclass bt-concave-shape(btCollisionShape)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod process-all-triangles ((self bt-concave-shape) (callback bt-triangle-callback) (aabbMin bt-vector3) (aabbMax bt-vector3))
  (btConcaveShape_processAllTriangles (ff-pointer self) callback aabbMin aabbMax))

(cl:defmethod get-margin ((self bt-concave-shape))
  (btConcaveShape_getMargin (ff-pointer self)))

(cl:defmethod set-margin ((self bt-concave-shape) (collisionMargin cl:number))
  (btConcaveShape_setMargin (ff-pointer self) collisionMargin))


(cl:defclass bt-static-plane-shape(btConcaveShape)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-static-plane-shape) &key (planeNormal bt-vector3) (planeConstant cl:number))
  (setf (slot-value obj 'ff-pointer) (new_btStaticPlaneShape planeNormal planeConstant)))

(cl:defmethod get-aabb ((self bt-static-plane-shape) (t-arg1 bt-transform) (aabbMin bt-vector3) (aabbMax bt-vector3))
  (btStaticPlaneShape_getAabb (ff-pointer self) t-arg1 aabbMin aabbMax))

(cl:defmethod process-all-triangles ((self bt-static-plane-shape) (callback bt-triangle-callback) (aabbMin bt-vector3) (aabbMax bt-vector3))
  (btStaticPlaneShape_processAllTriangles (ff-pointer self) callback aabbMin aabbMax))

(cl:defmethod calculate-local-inertia ((self bt-static-plane-shape) (mass cl:number) (inertia bt-vector3))
  (btStaticPlaneShape_calculateLocalInertia (ff-pointer self) mass inertia))

(cl:defmethod set-local-scaling ((self bt-static-plane-shape) (scaling bt-vector3))
  (btStaticPlaneShape_setLocalScaling (ff-pointer self) scaling))

(cl:defmethod get-local-scaling ((self bt-static-plane-shape))
  (btStaticPlaneShape_getLocalScaling (ff-pointer self)))

(cl:defmethod get-plane-normal ((self bt-static-plane-shape))
  (btStaticPlaneShape_getPlaneNormal (ff-pointer self)))

(cl:defmethod get-plane-constant ((self bt-static-plane-shape))
  (btStaticPlaneShape_getPlaneConstant (ff-pointer self)))

(cl:defmethod get-name ((self bt-static-plane-shape))
  (btStaticPlaneShape_getName (ff-pointer self)))

(cl:defmethod calculate-serialize-buffer-size ((self bt-static-plane-shape))
  (btStaticPlaneShape_calculateSerializeBufferSize (ff-pointer self)))

(cl:defmethod serialize ((self bt-static-plane-shape) dataBuffer serializer)
  (btStaticPlaneShape_serialize (ff-pointer self) dataBuffer serializer))


(cl:defclass bt-static-plane-shape-data()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-static-plane-shape-data) &key)
  (setf (slot-value obj 'ff-pointer) (new_btStaticPlaneShapeData)))


(cl:defclass bt-convex-hull-shape(btPolyhedralConvexAabbCachingShape)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-convex-hull-shape) &key points (numPoints cl:integer) (stride cl:integer))
  (setf (slot-value obj 'ff-pointer) (new_btConvexHullShape points numPoints stride)))

(cl:defmethod initialize-instance :after ((obj bt-convex-hull-shape) &key points (numPoints cl:integer))
  (setf (slot-value obj 'ff-pointer) (new_btConvexHullShape points numPoints)))

(cl:defmethod initialize-instance :after ((obj bt-convex-hull-shape) &key points)
  (setf (slot-value obj 'ff-pointer) (new_btConvexHullShape points)))

(cl:defmethod initialize-instance :after ((obj bt-convex-hull-shape) &key)
  (setf (slot-value obj 'ff-pointer) (new_btConvexHullShape)))

(cl:defmethod add-point ((self bt-convex-hull-shape) (point bt-vector3))
  (btConvexHullShape_addPoint (ff-pointer self) point))

(cl:defmethod get-unscaled-points ((self bt-convex-hull-shape))
  (btConvexHullShape_getUnscaledPoints (ff-pointer self)))

(cl:defmethod get-unscaled-points ((self bt-convex-hull-shape))
  (btConvexHullShape_getUnscaledPoints (ff-pointer self)))

(cl:defmethod get-points ((self bt-convex-hull-shape))
  (btConvexHullShape_getPoints (ff-pointer self)))

(cl:defmethod get-scaled-point ((self bt-convex-hull-shape) (i cl:integer))
  (btConvexHullShape_getScaledPoint (ff-pointer self) i))

(cl:defmethod get-num-points ((self bt-convex-hull-shape))
  (btConvexHullShape_getNumPoints (ff-pointer self)))

(cl:defmethod local-get-supporting-vertex ((self bt-convex-hull-shape) (vec bt-vector3))
  (btConvexHullShape_localGetSupportingVertex (ff-pointer self) vec))

(cl:defmethod local-get-supporting-vertex-without-margin ((self bt-convex-hull-shape) (vec bt-vector3))
  (btConvexHullShape_localGetSupportingVertexWithoutMargin (ff-pointer self) vec))

(cl:defmethod batched-unit-vector-get-supporting-vertex-without-margin ((self bt-convex-hull-shape) (vectors bt-vector3) (supportVerticesOut bt-vector3) (numVectors cl:integer))
  (btConvexHullShape_batchedUnitVectorGetSupportingVertexWithoutMargin (ff-pointer self) vectors supportVerticesOut numVectors))

(cl:defmethod project ((self bt-convex-hull-shape) (trans bt-transform) (dir bt-vector3) min max)
  (btConvexHullShape_project (ff-pointer self) trans dir min max))

(cl:defmethod get-name ((self bt-convex-hull-shape))
  (btConvexHullShape_getName (ff-pointer self)))

(cl:defmethod get-num-vertices ((self bt-convex-hull-shape))
  (btConvexHullShape_getNumVertices (ff-pointer self)))

(cl:defmethod get-num-edges ((self bt-convex-hull-shape))
  (btConvexHullShape_getNumEdges (ff-pointer self)))

(cl:defmethod get-edge ((self bt-convex-hull-shape) (i cl:integer) (pa bt-vector3) (pb bt-vector3))
  (btConvexHullShape_getEdge (ff-pointer self) i pa pb))

(cl:defmethod get-vertex ((self bt-convex-hull-shape) (i cl:integer) (vtx bt-vector3))
  (btConvexHullShape_getVertex (ff-pointer self) i vtx))

(cl:defmethod get-num-planes ((self bt-convex-hull-shape))
  (btConvexHullShape_getNumPlanes (ff-pointer self)))

(cl:defmethod get-plane ((self bt-convex-hull-shape) (planeNormal bt-vector3) (planeSupport bt-vector3) (i cl:integer))
  (btConvexHullShape_getPlane (ff-pointer self) planeNormal planeSupport i))

(cl:defmethod is-inside ((self bt-convex-hull-shape) (pt bt-vector3) (tolerance cl:number))
  (btConvexHullShape_isInside (ff-pointer self) pt tolerance))

(cl:defmethod set-local-scaling ((self bt-convex-hull-shape) (scaling bt-vector3))
  (btConvexHullShape_setLocalScaling (ff-pointer self) scaling))

(cl:defmethod calculate-serialize-buffer-size ((self bt-convex-hull-shape))
  (btConvexHullShape_calculateSerializeBufferSize (ff-pointer self)))

(cl:defmethod serialize ((self bt-convex-hull-shape) dataBuffer serializer)
  (btConvexHullShape_serialize (ff-pointer self) dataBuffer serializer))


(cl:defclass bt-convex-hull-shape-data()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-convex-hull-shape-data) &key)
  (setf (slot-value obj 'ff-pointer) (new_btConvexHullShapeData)))


(cl:defclass bt-striding-mesh-interface()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod internal-process-all-triangles ((self bt-striding-mesh-interface) (callback bt-internal-triangle-index-callback) (aabbMin bt-vector3) (aabbMax bt-vector3))
  (btStridingMeshInterface_InternalProcessAllTriangles (ff-pointer self) callback aabbMin aabbMax))

(cl:defmethod calculate-aabb-brute-force ((self bt-striding-mesh-interface) (aabbMin bt-vector3) (aabbMax bt-vector3))
  (btStridingMeshInterface_calculateAabbBruteForce (ff-pointer self) aabbMin aabbMax))

(cl:defmethod get-locked-vertex-index-base ((self bt-striding-mesh-interface) vertexbase numverts type stride indexbase indexstride numfaces indicestype (subpart cl:integer))
  (btStridingMeshInterface_getLockedVertexIndexBase (ff-pointer self) vertexbase numverts type stride indexbase indexstride numfaces indicestype subpart))

(cl:defmethod get-locked-vertex-index-base ((self bt-striding-mesh-interface) vertexbase numverts type stride indexbase indexstride numfaces indicestype)
  (btStridingMeshInterface_getLockedVertexIndexBase (ff-pointer self) vertexbase numverts type stride indexbase indexstride numfaces indicestype))

(cl:defmethod get-locked-read-only-vertex-index-base ((self bt-striding-mesh-interface) vertexbase numverts type stride indexbase indexstride numfaces indicestype (subpart cl:integer))
  (btStridingMeshInterface_getLockedReadOnlyVertexIndexBase (ff-pointer self) vertexbase numverts type stride indexbase indexstride numfaces indicestype subpart))

(cl:defmethod get-locked-read-only-vertex-index-base ((self bt-striding-mesh-interface) vertexbase numverts type stride indexbase indexstride numfaces indicestype)
  (btStridingMeshInterface_getLockedReadOnlyVertexIndexBase (ff-pointer self) vertexbase numverts type stride indexbase indexstride numfaces indicestype))

(cl:defmethod un-lock-vertex-base ((self bt-striding-mesh-interface) (subpart cl:integer))
  (btStridingMeshInterface_unLockVertexBase (ff-pointer self) subpart))

(cl:defmethod un-lock-read-only-vertex-base ((self bt-striding-mesh-interface) (subpart cl:integer))
  (btStridingMeshInterface_unLockReadOnlyVertexBase (ff-pointer self) subpart))

(cl:defmethod get-num-sub-parts ((self bt-striding-mesh-interface))
  (btStridingMeshInterface_getNumSubParts (ff-pointer self)))

(cl:defmethod preallocate-vertices ((self bt-striding-mesh-interface) (numverts cl:integer))
  (btStridingMeshInterface_preallocateVertices (ff-pointer self) numverts))

(cl:defmethod preallocate-indices ((self bt-striding-mesh-interface) (numindices cl:integer))
  (btStridingMeshInterface_preallocateIndices (ff-pointer self) numindices))

(cl:defmethod has-premade-aabb ((self bt-striding-mesh-interface))
  (btStridingMeshInterface_hasPremadeAabb (ff-pointer self)))

(cl:defmethod set-premade-aabb ((self bt-striding-mesh-interface) (aabbMin bt-vector3) (aabbMax bt-vector3))
  (btStridingMeshInterface_setPremadeAabb (ff-pointer self) aabbMin aabbMax))

(cl:defmethod get-premade-aabb ((self bt-striding-mesh-interface) (aabbMin bt-vector3) (aabbMax bt-vector3))
  (btStridingMeshInterface_getPremadeAabb (ff-pointer self) aabbMin aabbMax))

(cl:defmethod get-scaling ((self bt-striding-mesh-interface))
  (btStridingMeshInterface_getScaling (ff-pointer self)))

(cl:defmethod set-scaling ((self bt-striding-mesh-interface) (scaling bt-vector3))
  (btStridingMeshInterface_setScaling (ff-pointer self) scaling))

(cl:defmethod calculate-serialize-buffer-size ((self bt-striding-mesh-interface))
  (btStridingMeshInterface_calculateSerializeBufferSize (ff-pointer self)))

(cl:defmethod serialize ((self bt-striding-mesh-interface) dataBuffer serializer)
  (btStridingMeshInterface_serialize (ff-pointer self) dataBuffer serializer))


(cl:defclass bt-int-index-data()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-int-index-data) &key)
  (setf (slot-value obj 'ff-pointer) (new_btIntIndexData)))


(cl:defclass bt-short-int-index-data()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-short-int-index-data) &key)
  (setf (slot-value obj 'ff-pointer) (new_btShortIntIndexData)))


(cl:defclass bt-short-int-index-triplet-data()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-short-int-index-triplet-data) &key)
  (setf (slot-value obj 'ff-pointer) (new_btShortIntIndexTripletData)))


(cl:defclass bt-char-index-triplet-data()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-char-index-triplet-data) &key)
  (setf (slot-value obj 'ff-pointer) (new_btCharIndexTripletData)))


(cl:defclass bt-mesh-part-data()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-mesh-part-data) &key)
  (setf (slot-value obj 'ff-pointer) (new_btMeshPartData)))


(cl:defclass bt-striding-mesh-interface-data()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-striding-mesh-interface-data) &key)
  (setf (slot-value obj 'ff-pointer) (new_btStridingMeshInterfaceData)))


(cl:defclass bt-indexed-mesh()
  ((ff-pointer :reader ff-pointer)))


(cl:defclass bt-triangle-index-vertex-array(btStridingMeshInterface)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-triangle-index-vertex-array) &key)
  (setf (slot-value obj 'ff-pointer) (new_btTriangleIndexVertexArray)))

(cl:defmethod initialize-instance :after ((obj bt-triangle-index-vertex-array) &key (numTriangles cl:integer) triangleIndexBase (triangleIndexStride cl:integer) (numVertices cl:integer) vertexBase (vertexStride cl:integer))
  (setf (slot-value obj 'ff-pointer) (new_btTriangleIndexVertexArray numTriangles triangleIndexBase triangleIndexStride numVertices vertexBase vertexStride)))

(cl:defmethod add-indexed-mesh ((self bt-triangle-index-vertex-array) (mesh bt-indexed-mesh) (indexType cl:integer))
  (btTriangleIndexVertexArray_addIndexedMesh (ff-pointer self) mesh indexType))

(cl:defmethod add-indexed-mesh ((self bt-triangle-index-vertex-array) (mesh bt-indexed-mesh))
  (btTriangleIndexVertexArray_addIndexedMesh (ff-pointer self) mesh))

(cl:defmethod get-locked-vertex-index-base ((self bt-triangle-index-vertex-array) vertexbase numverts type vertexStride indexbase indexstride numfaces indicestype (subpart cl:integer))
  (btTriangleIndexVertexArray_getLockedVertexIndexBase (ff-pointer self) vertexbase numverts type vertexStride indexbase indexstride numfaces indicestype subpart))

(cl:defmethod get-locked-vertex-index-base ((self bt-triangle-index-vertex-array) vertexbase numverts type vertexStride indexbase indexstride numfaces indicestype)
  (btTriangleIndexVertexArray_getLockedVertexIndexBase (ff-pointer self) vertexbase numverts type vertexStride indexbase indexstride numfaces indicestype))

(cl:defmethod get-locked-read-only-vertex-index-base ((self bt-triangle-index-vertex-array) vertexbase numverts type vertexStride indexbase indexstride numfaces indicestype (subpart cl:integer))
  (btTriangleIndexVertexArray_getLockedReadOnlyVertexIndexBase (ff-pointer self) vertexbase numverts type vertexStride indexbase indexstride numfaces indicestype subpart))

(cl:defmethod get-locked-read-only-vertex-index-base ((self bt-triangle-index-vertex-array) vertexbase numverts type vertexStride indexbase indexstride numfaces indicestype)
  (btTriangleIndexVertexArray_getLockedReadOnlyVertexIndexBase (ff-pointer self) vertexbase numverts type vertexStride indexbase indexstride numfaces indicestype))

(cl:defmethod un-lock-vertex-base ((self bt-triangle-index-vertex-array) (subpart cl:integer))
  (btTriangleIndexVertexArray_unLockVertexBase (ff-pointer self) subpart))

(cl:defmethod un-lock-read-only-vertex-base ((self bt-triangle-index-vertex-array) (subpart cl:integer))
  (btTriangleIndexVertexArray_unLockReadOnlyVertexBase (ff-pointer self) subpart))

(cl:defmethod get-num-sub-parts ((self bt-triangle-index-vertex-array))
  (btTriangleIndexVertexArray_getNumSubParts (ff-pointer self)))

(cl:defmethod get-indexed-mesh-array ((self bt-triangle-index-vertex-array))
  (btTriangleIndexVertexArray_getIndexedMeshArray (ff-pointer self)))

(cl:defmethod get-indexed-mesh-array ((self bt-triangle-index-vertex-array))
  (btTriangleIndexVertexArray_getIndexedMeshArray (ff-pointer self)))

(cl:defmethod preallocate-vertices ((self bt-triangle-index-vertex-array) (numverts cl:integer))
  (btTriangleIndexVertexArray_preallocateVertices (ff-pointer self) numverts))

(cl:defmethod preallocate-indices ((self bt-triangle-index-vertex-array) (numindices cl:integer))
  (btTriangleIndexVertexArray_preallocateIndices (ff-pointer self) numindices))

(cl:defmethod has-premade-aabb ((self bt-triangle-index-vertex-array))
  (btTriangleIndexVertexArray_hasPremadeAabb (ff-pointer self)))

(cl:defmethod set-premade-aabb ((self bt-triangle-index-vertex-array) (aabbMin bt-vector3) (aabbMax bt-vector3))
  (btTriangleIndexVertexArray_setPremadeAabb (ff-pointer self) aabbMin aabbMax))

(cl:defmethod get-premade-aabb ((self bt-triangle-index-vertex-array) (aabbMin bt-vector3) (aabbMax bt-vector3))
  (btTriangleIndexVertexArray_getPremadeAabb (ff-pointer self) aabbMin aabbMax))


(cl:defclass bt-triangle-mesh(btTriangleIndexVertexArray)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod (cl:setf m_weldingThreshold) (arg0 (obj bt-triangle-mesh))
  (btTriangleMesh_m_weldingThreshold_set (ff-pointer obj) arg0))

(cl:defmethod m_weldingThreshold ((obj bt-triangle-mesh))
  (btTriangleMesh_m_weldingThreshold_get (ff-pointer obj)))

(cl:defmethod initialize-instance :after ((obj bt-triangle-mesh) &key (use32bitIndices t) (use4componentVertices t))
  (setf (slot-value obj 'ff-pointer) (new_btTriangleMesh use32bitIndices use4componentVertices)))

(cl:defmethod initialize-instance :after ((obj bt-triangle-mesh) &key (use32bitIndices t))
  (setf (slot-value obj 'ff-pointer) (new_btTriangleMesh use32bitIndices)))

(cl:defmethod initialize-instance :after ((obj bt-triangle-mesh) &key)
  (setf (slot-value obj 'ff-pointer) (new_btTriangleMesh)))

(cl:defmethod get-use32bit-indices ((self bt-triangle-mesh))
  (btTriangleMesh_getUse32bitIndices (ff-pointer self)))

(cl:defmethod get-use4component-vertices ((self bt-triangle-mesh))
  (btTriangleMesh_getUse4componentVertices (ff-pointer self)))

(cl:defmethod add-triangle ((self bt-triangle-mesh) (vertex0 bt-vector3) (vertex1 bt-vector3) (vertex2 bt-vector3) (removeDuplicateVertices t))
  (btTriangleMesh_addTriangle (ff-pointer self) vertex0 vertex1 vertex2 removeDuplicateVertices))

(cl:defmethod add-triangle ((self bt-triangle-mesh) (vertex0 bt-vector3) (vertex1 bt-vector3) (vertex2 bt-vector3))
  (btTriangleMesh_addTriangle (ff-pointer self) vertex0 vertex1 vertex2))

(cl:defmethod get-num-triangles ((self bt-triangle-mesh))
  (btTriangleMesh_getNumTriangles (ff-pointer self)))

(cl:defmethod preallocate-vertices ((self bt-triangle-mesh) (numverts cl:integer))
  (btTriangleMesh_preallocateVertices (ff-pointer self) numverts))

(cl:defmethod preallocate-indices ((self bt-triangle-mesh) (numindices cl:integer))
  (btTriangleMesh_preallocateIndices (ff-pointer self) numindices))

(cl:defmethod find-or-add-vertex ((self bt-triangle-mesh) (vertex bt-vector3) (removeDuplicateVertices t))
  (btTriangleMesh_findOrAddVertex (ff-pointer self) vertex removeDuplicateVertices))

(cl:defmethod add-index ((self bt-triangle-mesh) (index cl:integer))
  (btTriangleMesh_addIndex (ff-pointer self) index))


(cl:defclass bt-convex-triangle-mesh-shape(btPolyhedralConvexAabbCachingShape)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-convex-triangle-mesh-shape) &key (meshInterface bt-striding-mesh-interface) (calcAabb t))
  (setf (slot-value obj 'ff-pointer) (new_btConvexTriangleMeshShape meshInterface calcAabb)))

(cl:defmethod initialize-instance :after ((obj bt-convex-triangle-mesh-shape) &key (meshInterface bt-striding-mesh-interface))
  (setf (slot-value obj 'ff-pointer) (new_btConvexTriangleMeshShape meshInterface)))

(cl:defmethod get-mesh-interface ((self bt-convex-triangle-mesh-shape))
  (btConvexTriangleMeshShape_getMeshInterface (ff-pointer self)))

(cl:defmethod get-mesh-interface ((self bt-convex-triangle-mesh-shape))
  (btConvexTriangleMeshShape_getMeshInterface (ff-pointer self)))

(cl:defmethod local-get-supporting-vertex ((self bt-convex-triangle-mesh-shape) (vec bt-vector3))
  (btConvexTriangleMeshShape_localGetSupportingVertex (ff-pointer self) vec))

(cl:defmethod local-get-supporting-vertex-without-margin ((self bt-convex-triangle-mesh-shape) (vec bt-vector3))
  (btConvexTriangleMeshShape_localGetSupportingVertexWithoutMargin (ff-pointer self) vec))

(cl:defmethod batched-unit-vector-get-supporting-vertex-without-margin ((self bt-convex-triangle-mesh-shape) (vectors bt-vector3) (supportVerticesOut bt-vector3) (numVectors cl:integer))
  (btConvexTriangleMeshShape_batchedUnitVectorGetSupportingVertexWithoutMargin (ff-pointer self) vectors supportVerticesOut numVectors))

(cl:defmethod get-name ((self bt-convex-triangle-mesh-shape))
  (btConvexTriangleMeshShape_getName (ff-pointer self)))

(cl:defmethod get-num-vertices ((self bt-convex-triangle-mesh-shape))
  (btConvexTriangleMeshShape_getNumVertices (ff-pointer self)))

(cl:defmethod get-num-edges ((self bt-convex-triangle-mesh-shape))
  (btConvexTriangleMeshShape_getNumEdges (ff-pointer self)))

(cl:defmethod get-edge ((self bt-convex-triangle-mesh-shape) (i cl:integer) (pa bt-vector3) (pb bt-vector3))
  (btConvexTriangleMeshShape_getEdge (ff-pointer self) i pa pb))

(cl:defmethod get-vertex ((self bt-convex-triangle-mesh-shape) (i cl:integer) (vtx bt-vector3))
  (btConvexTriangleMeshShape_getVertex (ff-pointer self) i vtx))

(cl:defmethod get-num-planes ((self bt-convex-triangle-mesh-shape))
  (btConvexTriangleMeshShape_getNumPlanes (ff-pointer self)))

(cl:defmethod get-plane ((self bt-convex-triangle-mesh-shape) (planeNormal bt-vector3) (planeSupport bt-vector3) (i cl:integer))
  (btConvexTriangleMeshShape_getPlane (ff-pointer self) planeNormal planeSupport i))

(cl:defmethod is-inside ((self bt-convex-triangle-mesh-shape) (pt bt-vector3) (tolerance cl:number))
  (btConvexTriangleMeshShape_isInside (ff-pointer self) pt tolerance))

(cl:defmethod set-local-scaling ((self bt-convex-triangle-mesh-shape) (scaling bt-vector3))
  (btConvexTriangleMeshShape_setLocalScaling (ff-pointer self) scaling))

(cl:defmethod get-local-scaling ((self bt-convex-triangle-mesh-shape))
  (btConvexTriangleMeshShape_getLocalScaling (ff-pointer self)))

(cl:defmethod calculate-principal-axis-transform ((self bt-convex-triangle-mesh-shape) (principal bt-transform) (inertia bt-vector3) volume)
  (btConvexTriangleMeshShape_calculatePrincipalAxisTransform (ff-pointer self) principal inertia volume))


(cl:defclass bt-triangle-mesh-shape(btConcaveShape)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod local-get-supporting-vertex ((self bt-triangle-mesh-shape) (vec bt-vector3))
  (btTriangleMeshShape_localGetSupportingVertex (ff-pointer self) vec))

(cl:defmethod local-get-supporting-vertex-without-margin ((self bt-triangle-mesh-shape) (vec bt-vector3))
  (btTriangleMeshShape_localGetSupportingVertexWithoutMargin (ff-pointer self) vec))

(cl:defmethod recalc-local-aabb ((self bt-triangle-mesh-shape))
  (btTriangleMeshShape_recalcLocalAabb (ff-pointer self)))

(cl:defmethod get-aabb ((self bt-triangle-mesh-shape) (t-arg1 bt-transform) (aabbMin bt-vector3) (aabbMax bt-vector3))
  (btTriangleMeshShape_getAabb (ff-pointer self) t-arg1 aabbMin aabbMax))

(cl:defmethod process-all-triangles ((self bt-triangle-mesh-shape) (callback bt-triangle-callback) (aabbMin bt-vector3) (aabbMax bt-vector3))
  (btTriangleMeshShape_processAllTriangles (ff-pointer self) callback aabbMin aabbMax))

(cl:defmethod calculate-local-inertia ((self bt-triangle-mesh-shape) (mass cl:number) (inertia bt-vector3))
  (btTriangleMeshShape_calculateLocalInertia (ff-pointer self) mass inertia))

(cl:defmethod set-local-scaling ((self bt-triangle-mesh-shape) (scaling bt-vector3))
  (btTriangleMeshShape_setLocalScaling (ff-pointer self) scaling))

(cl:defmethod get-local-scaling ((self bt-triangle-mesh-shape))
  (btTriangleMeshShape_getLocalScaling (ff-pointer self)))

(cl:defmethod get-mesh-interface ((self bt-triangle-mesh-shape))
  (btTriangleMeshShape_getMeshInterface (ff-pointer self)))

(cl:defmethod get-mesh-interface ((self bt-triangle-mesh-shape))
  (btTriangleMeshShape_getMeshInterface (ff-pointer self)))

(cl:defmethod get-local-aabb-min ((self bt-triangle-mesh-shape))
  (btTriangleMeshShape_getLocalAabbMin (ff-pointer self)))

(cl:defmethod get-local-aabb-max ((self bt-triangle-mesh-shape))
  (btTriangleMeshShape_getLocalAabbMax (ff-pointer self)))

(cl:defmethod get-name ((self bt-triangle-mesh-shape))
  (btTriangleMeshShape_getName (ff-pointer self)))


(cl:defclass bt-quantized-bvh-node()
  ((ff-pointer :reader ff-pointer)))


(cl:defclass bt-optimized-bvh-node()
  ((ff-pointer :reader ff-pointer)))


(cl:defclass bt-bvh-subtree-info()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod (cl:setf m_quantizedAabbMin) (arg0 (obj bt-bvh-subtree-info))
  (btBvhSubtreeInfo_m_quantizedAabbMin_set (ff-pointer obj) arg0))

(cl:defmethod m_quantizedAabbMin ((obj bt-bvh-subtree-info))
  (btBvhSubtreeInfo_m_quantizedAabbMin_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_quantizedAabbMax) (arg0 (obj bt-bvh-subtree-info))
  (btBvhSubtreeInfo_m_quantizedAabbMax_set (ff-pointer obj) arg0))

(cl:defmethod m_quantizedAabbMax ((obj bt-bvh-subtree-info))
  (btBvhSubtreeInfo_m_quantizedAabbMax_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_rootNodeIndex) (arg0 (obj bt-bvh-subtree-info))
  (btBvhSubtreeInfo_m_rootNodeIndex_set (ff-pointer obj) arg0))

(cl:defmethod m_rootNodeIndex ((obj bt-bvh-subtree-info))
  (btBvhSubtreeInfo_m_rootNodeIndex_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_subtreeSize) (arg0 (obj bt-bvh-subtree-info))
  (btBvhSubtreeInfo_m_subtreeSize_set (ff-pointer obj) arg0))

(cl:defmethod m_subtreeSize ((obj bt-bvh-subtree-info))
  (btBvhSubtreeInfo_m_subtreeSize_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_padding) (arg0 (obj bt-bvh-subtree-info))
  (btBvhSubtreeInfo_m_padding_set (ff-pointer obj) arg0))

(cl:defmethod m_padding ((obj bt-bvh-subtree-info))
  (btBvhSubtreeInfo_m_padding_get (ff-pointer obj)))

(cl:defmethod initialize-instance :after ((obj bt-bvh-subtree-info) &key)
  (setf (slot-value obj 'ff-pointer) (new_btBvhSubtreeInfo)))

(cl:defmethod set-aabb-from-quantize-node ((self bt-bvh-subtree-info) (quantizedNode bt-quantized-bvh-node))
  (btBvhSubtreeInfo_setAabbFromQuantizeNode (ff-pointer self) quantizedNode))


(cl:defclass bt-node-overlap-callback()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod process-node ((self bt-node-overlap-callback) (subPart cl:integer) (triangleIndex cl:integer))
  (btNodeOverlapCallback_processNode (ff-pointer self) subPart triangleIndex))


(cl:defclass bt-quantized-bvh()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-quantized-bvh) &key)
  (setf (slot-value obj 'ff-pointer) (new_btQuantizedBvh)))

(cl:defmethod set-quantization-values ((self bt-quantized-bvh) (bvhAabbMin bt-vector3) (bvhAabbMax bt-vector3) (quantizationMargin cl:number))
  (btQuantizedBvh_setQuantizationValues (ff-pointer self) bvhAabbMin bvhAabbMax quantizationMargin))

(cl:defmethod set-quantization-values ((self bt-quantized-bvh) (bvhAabbMin bt-vector3) (bvhAabbMax bt-vector3))
  (btQuantizedBvh_setQuantizationValues (ff-pointer self) bvhAabbMin bvhAabbMax))

(cl:defmethod get-leaf-node-array ((self bt-quantized-bvh))
  (btQuantizedBvh_getLeafNodeArray (ff-pointer self)))

(cl:defmethod build-internal ((self bt-quantized-bvh))
  (btQuantizedBvh_buildInternal (ff-pointer self)))

(cl:defmethod report-aabb-overlapping-nodex ((self bt-quantized-bvh) (nodeCallback bt-node-overlap-callback) (aabbMin bt-vector3) (aabbMax bt-vector3))
  (btQuantizedBvh_reportAabbOverlappingNodex (ff-pointer self) nodeCallback aabbMin aabbMax))

(cl:defmethod report-ray-overlapping-nodex ((self bt-quantized-bvh) (nodeCallback bt-node-overlap-callback) (raySource bt-vector3) (rayTarget bt-vector3))
  (btQuantizedBvh_reportRayOverlappingNodex (ff-pointer self) nodeCallback raySource rayTarget))

(cl:defmethod report-box-cast-overlapping-nodex ((self bt-quantized-bvh) (nodeCallback bt-node-overlap-callback) (raySource bt-vector3) (rayTarget bt-vector3) (aabbMin bt-vector3) (aabbMax bt-vector3))
  (btQuantizedBvh_reportBoxCastOverlappingNodex (ff-pointer self) nodeCallback raySource rayTarget aabbMin aabbMax))

(cl:defmethod quantize ((self bt-quantized-bvh) out (point bt-vector3) (isMax cl:integer))
  (btQuantizedBvh_quantize (ff-pointer self) out point isMax))

(cl:defmethod quantize-with-clamp ((self bt-quantized-bvh) out (point2 bt-vector3) (isMax cl:integer))
  (btQuantizedBvh_quantizeWithClamp (ff-pointer self) out point2 isMax))

(cl:defmethod un-quantize ((self bt-quantized-bvh) vecIn)
  (btQuantizedBvh_unQuantize (ff-pointer self) vecIn))

(cl:defmethod set-traversal-mode ((self bt-quantized-bvh) (traversalMode cl:integer))
  (btQuantizedBvh_setTraversalMode (ff-pointer self) traversalMode))

(cl:defmethod get-quantized-node-array ((self bt-quantized-bvh))
  (btQuantizedBvh_getQuantizedNodeArray (ff-pointer self)))

(cl:defmethod get-subtree-info-array ((self bt-quantized-bvh))
  (btQuantizedBvh_getSubtreeInfoArray (ff-pointer self)))

(cl:defmethod calculate-serialize-buffer-size ((self bt-quantized-bvh))
  (btQuantizedBvh_calculateSerializeBufferSize (ff-pointer self)))

(cl:defmethod serialize ((self bt-quantized-bvh) o_alignedDataBuffer (i_dataBufferSize cl:integer) (i_swapEndian t))
  (btQuantizedBvh_serialize (ff-pointer self) o_alignedDataBuffer i_dataBufferSize i_swapEndian))

(cl:defmethod calculate-serialize-buffer-size-new ((self bt-quantized-bvh))
  (btQuantizedBvh_calculateSerializeBufferSizeNew (ff-pointer self)))

(cl:defmethod serialize ((self bt-quantized-bvh) dataBuffer serializer)
  (btQuantizedBvh_serialize (ff-pointer self) dataBuffer serializer))

(cl:defmethod de-serialize-float ((self bt-quantized-bvh) quantizedBvhFloatData)
  (btQuantizedBvh_deSerializeFloat (ff-pointer self) quantizedBvhFloatData))

(cl:defmethod de-serialize-double ((self bt-quantized-bvh) quantizedBvhDoubleData)
  (btQuantizedBvh_deSerializeDouble (ff-pointer self) quantizedBvhDoubleData))

(cl:defmethod is-quantized ((self bt-quantized-bvh))
  (btQuantizedBvh_isQuantized (ff-pointer self)))


(cl:defclass bt-bvh-subtree-info-data()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-bvh-subtree-info-data) &key)
  (setf (slot-value obj 'ff-pointer) (new_btBvhSubtreeInfoData)))


(cl:defclass bt-optimized-bvh-node-float-data()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-optimized-bvh-node-float-data) &key)
  (setf (slot-value obj 'ff-pointer) (new_btOptimizedBvhNodeFloatData)))


(cl:defclass bt-optimized-bvh-node-double-data()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-optimized-bvh-node-double-data) &key)
  (setf (slot-value obj 'ff-pointer) (new_btOptimizedBvhNodeDoubleData)))


(cl:defclass bt-quantized-bvh-node-data()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-quantized-bvh-node-data) &key)
  (setf (slot-value obj 'ff-pointer) (new_btQuantizedBvhNodeData)))


(cl:defclass bt-quantized-bvh-float-data()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-quantized-bvh-float-data) &key)
  (setf (slot-value obj 'ff-pointer) (new_btQuantizedBvhFloatData)))


(cl:defclass bt-quantized-bvh-double-data()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-quantized-bvh-double-data) &key)
  (setf (slot-value obj 'ff-pointer) (new_btQuantizedBvhDoubleData)))


(cl:defclass bt-optimized-bvh(btQuantizedBvh)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-optimized-bvh) &key)
  (setf (slot-value obj 'ff-pointer) (new_btOptimizedBvh)))

(cl:defmethod build ((self bt-optimized-bvh) (triangles bt-striding-mesh-interface) (useQuantizedAabbCompression t) (bvhAabbMin bt-vector3) (bvhAabbMax bt-vector3))
  (btOptimizedBvh_build (ff-pointer self) triangles useQuantizedAabbCompression bvhAabbMin bvhAabbMax))

(cl:defmethod refit ((self bt-optimized-bvh) (triangles bt-striding-mesh-interface) (aabbMin bt-vector3) (aabbMax bt-vector3))
  (btOptimizedBvh_refit (ff-pointer self) triangles aabbMin aabbMax))

(cl:defmethod refit-partial ((self bt-optimized-bvh) (triangles bt-striding-mesh-interface) (aabbMin bt-vector3) (aabbMax bt-vector3))
  (btOptimizedBvh_refitPartial (ff-pointer self) triangles aabbMin aabbMax))

(cl:defmethod update-bvh-nodes ((self bt-optimized-bvh) (meshInterface bt-striding-mesh-interface) (firstNode cl:integer) (endNode cl:integer) (index cl:integer))
  (btOptimizedBvh_updateBvhNodes (ff-pointer self) meshInterface firstNode endNode index))

(cl:defmethod serialize-in-place ((self bt-optimized-bvh) o_alignedDataBuffer (i_dataBufferSize cl:integer) (i_swapEndian t))
  (btOptimizedBvh_serializeInPlace (ff-pointer self) o_alignedDataBuffer i_dataBufferSize i_swapEndian))


(cl:defclass bt-hash-int()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-hash-int) &key (uid cl:integer))
  (setf (slot-value obj 'ff-pointer) (new_btHashInt uid)))

(cl:defmethod get-uid1 ((self bt-hash-int))
  (btHashInt_getUid1 (ff-pointer self)))

(cl:defmethod set-uid1 ((self bt-hash-int) (uid cl:integer))
  (btHashInt_setUid1 (ff-pointer self) uid))

(cl:defmethod equals ((self bt-hash-int) (other bt-hash-int))
  (btHashInt_equals (ff-pointer self) (ff-pointer other)))

(cl:defmethod get-hash ((self bt-hash-int))
  (btHashInt_getHash (ff-pointer self)))


(cl:defclass bt-hash-ptr()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-hash-ptr) &key ptr)
  (setf (slot-value obj 'ff-pointer) (new_btHashPtr ptr)))

(cl:defmethod get-pointer ((self bt-hash-ptr))
  (btHashPtr_getPointer (ff-pointer self)))

(cl:defmethod equals ((self bt-hash-ptr) (other bt-hash-ptr))
  (btHashPtr_equals (ff-pointer self) (ff-pointer other)))

(cl:defmethod get-hash ((self bt-hash-ptr))
  (btHashPtr_getHash (ff-pointer self)))


(cl:defclass bt-stack-alloc()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-stack-alloc) &key (size cl:integer))
  (setf (slot-value obj 'ff-pointer) (new_btStackAlloc size)))

(cl:defmethod create ((self bt-stack-alloc) (size cl:integer))
  (btStackAlloc_create (ff-pointer self) size))

(cl:defmethod destroy ((self bt-stack-alloc))
  (btStackAlloc_destroy (ff-pointer self)))

(cl:defmethod get-available-memory ((self bt-stack-alloc))
  (btStackAlloc_getAvailableMemory (ff-pointer self)))

(cl:defmethod allocate ((self bt-stack-alloc) (size cl:integer))
  (btStackAlloc_allocate (ff-pointer self) size))

(cl:defmethod begin-block ((self bt-stack-alloc))
  (btStackAlloc_beginBlock (ff-pointer self)))

(cl:defmethod end-block ((self bt-stack-alloc) block)
  (btStackAlloc_endBlock (ff-pointer self) block))


(cl:defclass bt-chunk()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod (cl:setf m_chunkCode) (arg0 (obj bt-chunk))
  (btChunk_m_chunkCode_set (ff-pointer obj) arg0))

(cl:defmethod m_chunkCode ((obj bt-chunk))
  (btChunk_m_chunkCode_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_length) (arg0 (obj bt-chunk))
  (btChunk_m_length_set (ff-pointer obj) arg0))

(cl:defmethod m_length ((obj bt-chunk))
  (btChunk_m_length_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_oldPtr) (arg0 (obj bt-chunk))
  (btChunk_m_oldPtr_set (ff-pointer obj) arg0))

(cl:defmethod m_oldPtr ((obj bt-chunk))
  (btChunk_m_oldPtr_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_dna_nr) (arg0 (obj bt-chunk))
  (btChunk_m_dna_nr_set (ff-pointer obj) arg0))

(cl:defmethod m_dna_nr ((obj bt-chunk))
  (btChunk_m_dna_nr_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_number) (arg0 (obj bt-chunk))
  (btChunk_m_number_set (ff-pointer obj) arg0))

(cl:defmethod m_number ((obj bt-chunk))
  (btChunk_m_number_get (ff-pointer obj)))

(cl:defmethod initialize-instance :after ((obj bt-chunk) &key)
  (setf (slot-value obj 'ff-pointer) (new_btChunk)))


(cl:defclass bt-serializer()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod get-buffer-pointer ((self bt-serializer))
  (btSerializer_getBufferPointer (ff-pointer self)))

(cl:defmethod get-current-buffer-size ((self bt-serializer))
  (btSerializer_getCurrentBufferSize (ff-pointer self)))

(cl:defmethod allocate ((self bt-serializer) size (numElements cl:integer))
  (btSerializer_allocate (ff-pointer self) size numElements))

(cl:defmethod finalize-chunk ((self bt-serializer) (chunk bt-chunk) (structType cl:string) (chunkCode cl:integer) oldPtr)
  (btSerializer_finalizeChunk (ff-pointer self) chunk structType chunkCode oldPtr))

(cl:defmethod find-pointer ((self bt-serializer) oldPtr)
  (btSerializer_findPointer (ff-pointer self) oldPtr))

(cl:defmethod get-unique-pointer ((self bt-serializer) oldPtr)
  (btSerializer_getUniquePointer (ff-pointer self) oldPtr))

(cl:defmethod start-serialization ((self bt-serializer))
  (btSerializer_startSerialization (ff-pointer self)))

(cl:defmethod finish-serialization ((self bt-serializer))
  (btSerializer_finishSerialization (ff-pointer self)))

(cl:defmethod find-name-for-pointer ((self bt-serializer) ptr)
  (btSerializer_findNameForPointer (ff-pointer self) ptr))

(cl:defmethod register-name-for-pointer ((self bt-serializer) ptr (name cl:string))
  (btSerializer_registerNameForPointer (ff-pointer self) ptr name))

(cl:defmethod serialize-name ((self bt-serializer) (ptr cl:string))
  (btSerializer_serializeName (ff-pointer self) ptr))

(cl:defmethod get-serialization-flags ((self bt-serializer))
  (btSerializer_getSerializationFlags (ff-pointer self)))

(cl:defmethod set-serialization-flags ((self bt-serializer) (flags cl:integer))
  (btSerializer_setSerializationFlags (ff-pointer self) flags))


(cl:defclass bt-default-serializer(btSerializer)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-default-serializer) &key (totalSize cl:integer))
  (setf (slot-value obj 'ff-pointer) (new_btDefaultSerializer totalSize)))

(cl:defmethod initialize-instance :after ((obj bt-default-serializer) &key)
  (setf (slot-value obj 'ff-pointer) (new_btDefaultSerializer)))

(cl:defmethod write-header ((self bt-default-serializer) buffer)
  (btDefaultSerializer_writeHeader (ff-pointer self) buffer))

(cl:defmethod start-serialization ((self bt-default-serializer))
  (btDefaultSerializer_startSerialization (ff-pointer self)))

(cl:defmethod finish-serialization ((self bt-default-serializer))
  (btDefaultSerializer_finishSerialization (ff-pointer self)))

(cl:defmethod get-unique-pointer ((self bt-default-serializer) oldPtr)
  (btDefaultSerializer_getUniquePointer (ff-pointer self) oldPtr))

(cl:defmethod get-buffer-pointer ((self bt-default-serializer))
  (btDefaultSerializer_getBufferPointer (ff-pointer self)))

(cl:defmethod get-current-buffer-size ((self bt-default-serializer))
  (btDefaultSerializer_getCurrentBufferSize (ff-pointer self)))

(cl:defmethod finalize-chunk ((self bt-default-serializer) (chunk bt-chunk) (structType cl:string) (chunkCode cl:integer) oldPtr)
  (btDefaultSerializer_finalizeChunk (ff-pointer self) chunk structType chunkCode oldPtr))

(cl:defmethod internal-alloc ((self bt-default-serializer) size)
  (btDefaultSerializer_internalAlloc (ff-pointer self) size))

(cl:defmethod allocate ((self bt-default-serializer) size (numElements cl:integer))
  (btDefaultSerializer_allocate (ff-pointer self) size numElements))

(cl:defmethod find-name-for-pointer ((self bt-default-serializer) ptr)
  (btDefaultSerializer_findNameForPointer (ff-pointer self) ptr))

(cl:defmethod register-name-for-pointer ((self bt-default-serializer) ptr (name cl:string))
  (btDefaultSerializer_registerNameForPointer (ff-pointer self) ptr name))

(cl:defmethod serialize-name ((self bt-default-serializer) (name cl:string))
  (btDefaultSerializer_serializeName (ff-pointer self) name))

(cl:defmethod get-serialization-flags ((self bt-default-serializer))
  (btDefaultSerializer_getSerializationFlags (ff-pointer self)))

(cl:defmethod set-serialization-flags ((self bt-default-serializer) (flags cl:integer))
  (btDefaultSerializer_setSerializationFlags (ff-pointer self) flags))


(cl:defclass bt-triangle-info()
  ((ff-pointer :reader ff-pointer)))


(cl:defclass bt-triangle-info-map()
  ((ff-pointer :reader ff-pointer)))


(cl:defclass bt-triangle-info-data()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-triangle-info-data) &key)
  (setf (slot-value obj 'ff-pointer) (new_btTriangleInfoData)))


(cl:defclass bt-triangle-info-map-data()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-triangle-info-map-data) &key)
  (setf (slot-value obj 'ff-pointer) (new_btTriangleInfoMapData)))


(cl:defclass bt-bvh-triangle-mesh-shape(btTriangleMeshShape)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-bvh-triangle-mesh-shape) &key (meshInterface bt-striding-mesh-interface) (useQuantizedAabbCompression t) (buildBvh t))
  (setf (slot-value obj 'ff-pointer) (new_btBvhTriangleMeshShape meshInterface useQuantizedAabbCompression buildBvh)))

(cl:defmethod initialize-instance :after ((obj bt-bvh-triangle-mesh-shape) &key (meshInterface bt-striding-mesh-interface) (useQuantizedAabbCompression t))
  (setf (slot-value obj 'ff-pointer) (new_btBvhTriangleMeshShape meshInterface useQuantizedAabbCompression)))

(cl:defmethod initialize-instance :after ((obj bt-bvh-triangle-mesh-shape) &key (meshInterface bt-striding-mesh-interface) (useQuantizedAabbCompression t) (bvhAabbMin bt-vector3) (bvhAabbMax bt-vector3) (buildBvh t))
  (setf (slot-value obj 'ff-pointer) (new_btBvhTriangleMeshShape meshInterface useQuantizedAabbCompression bvhAabbMin bvhAabbMax buildBvh)))

(cl:defmethod initialize-instance :after ((obj bt-bvh-triangle-mesh-shape) &key (meshInterface bt-striding-mesh-interface) (useQuantizedAabbCompression t) (bvhAabbMin bt-vector3) (bvhAabbMax bt-vector3))
  (setf (slot-value obj 'ff-pointer) (new_btBvhTriangleMeshShape meshInterface useQuantizedAabbCompression bvhAabbMin bvhAabbMax)))

(cl:defmethod get-owns-bvh ((self bt-bvh-triangle-mesh-shape))
  (btBvhTriangleMeshShape_getOwnsBvh (ff-pointer self)))

(cl:defmethod perform-raycast ((self bt-bvh-triangle-mesh-shape) (callback bt-triangle-callback) (raySource bt-vector3) (rayTarget bt-vector3))
  (btBvhTriangleMeshShape_performRaycast (ff-pointer self) callback raySource rayTarget))

(cl:defmethod perform-convexcast ((self bt-bvh-triangle-mesh-shape) (callback bt-triangle-callback) (boxSource bt-vector3) (boxTarget bt-vector3) (boxMin bt-vector3) (boxMax bt-vector3))
  (btBvhTriangleMeshShape_performConvexcast (ff-pointer self) callback boxSource boxTarget boxMin boxMax))

(cl:defmethod process-all-triangles ((self bt-bvh-triangle-mesh-shape) (callback bt-triangle-callback) (aabbMin bt-vector3) (aabbMax bt-vector3))
  (btBvhTriangleMeshShape_processAllTriangles (ff-pointer self) callback aabbMin aabbMax))

(cl:defmethod refit-tree ((self bt-bvh-triangle-mesh-shape) (aabbMin bt-vector3) (aabbMax bt-vector3))
  (btBvhTriangleMeshShape_refitTree (ff-pointer self) aabbMin aabbMax))

(cl:defmethod partial-refit-tree ((self bt-bvh-triangle-mesh-shape) (aabbMin bt-vector3) (aabbMax bt-vector3))
  (btBvhTriangleMeshShape_partialRefitTree (ff-pointer self) aabbMin aabbMax))

(cl:defmethod get-name ((self bt-bvh-triangle-mesh-shape))
  (btBvhTriangleMeshShape_getName (ff-pointer self)))

(cl:defmethod set-local-scaling ((self bt-bvh-triangle-mesh-shape) (scaling bt-vector3))
  (btBvhTriangleMeshShape_setLocalScaling (ff-pointer self) scaling))

(cl:defmethod get-optimized-bvh ((self bt-bvh-triangle-mesh-shape))
  (btBvhTriangleMeshShape_getOptimizedBvh (ff-pointer self)))

(cl:defmethod set-optimized-bvh ((self bt-bvh-triangle-mesh-shape) (bvh bt-optimized-bvh) (localScaling bt-vector3))
  (btBvhTriangleMeshShape_setOptimizedBvh (ff-pointer self) bvh localScaling))

(cl:defmethod set-optimized-bvh ((self bt-bvh-triangle-mesh-shape) (bvh bt-optimized-bvh))
  (btBvhTriangleMeshShape_setOptimizedBvh (ff-pointer self) bvh))

(cl:defmethod build-optimized-bvh ((self bt-bvh-triangle-mesh-shape))
  (btBvhTriangleMeshShape_buildOptimizedBvh (ff-pointer self)))

(cl:defmethod uses-quantized-aabb-compression ((self bt-bvh-triangle-mesh-shape))
  (btBvhTriangleMeshShape_usesQuantizedAabbCompression (ff-pointer self)))

(cl:defmethod set-triangle-info-map ((self bt-bvh-triangle-mesh-shape) (triangleInfoMap bt-triangle-info-map))
  (btBvhTriangleMeshShape_setTriangleInfoMap (ff-pointer self) triangleInfoMap))

(cl:defmethod get-triangle-info-map ((self bt-bvh-triangle-mesh-shape))
  (btBvhTriangleMeshShape_getTriangleInfoMap (ff-pointer self)))

(cl:defmethod get-triangle-info-map ((self bt-bvh-triangle-mesh-shape))
  (btBvhTriangleMeshShape_getTriangleInfoMap (ff-pointer self)))

(cl:defmethod calculate-serialize-buffer-size ((self bt-bvh-triangle-mesh-shape))
  (btBvhTriangleMeshShape_calculateSerializeBufferSize (ff-pointer self)))

(cl:defmethod serialize ((self bt-bvh-triangle-mesh-shape) dataBuffer (serializer bt-serializer))
  (btBvhTriangleMeshShape_serialize (ff-pointer self) dataBuffer serializer))

(cl:defmethod serialize-single-bvh ((self bt-bvh-triangle-mesh-shape) (serializer bt-serializer))
  (btBvhTriangleMeshShape_serializeSingleBvh (ff-pointer self) serializer))

(cl:defmethod serialize-single-triangle-info-map ((self bt-bvh-triangle-mesh-shape) (serializer bt-serializer))
  (btBvhTriangleMeshShape_serializeSingleTriangleInfoMap (ff-pointer self) serializer))


(cl:defclass bt-triangle-mesh-shape-data()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-triangle-mesh-shape-data) &key)
  (setf (slot-value obj 'ff-pointer) (new_btTriangleMeshShapeData)))


(cl:defclass bt-scaled-bvh-triangle-mesh-shape(btConcaveShape)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-scaled-bvh-triangle-mesh-shape) &key (childShape bt-bvh-triangle-mesh-shape) (localScaling bt-vector3))
  (setf (slot-value obj 'ff-pointer) (new_btScaledBvhTriangleMeshShape childShape localScaling)))

(cl:defmethod get-aabb ((self bt-scaled-bvh-triangle-mesh-shape) (t-arg1 bt-transform) (aabbMin bt-vector3) (aabbMax bt-vector3))
  (btScaledBvhTriangleMeshShape_getAabb (ff-pointer self) t-arg1 aabbMin aabbMax))

(cl:defmethod set-local-scaling ((self bt-scaled-bvh-triangle-mesh-shape) (scaling bt-vector3))
  (btScaledBvhTriangleMeshShape_setLocalScaling (ff-pointer self) scaling))

(cl:defmethod get-local-scaling ((self bt-scaled-bvh-triangle-mesh-shape))
  (btScaledBvhTriangleMeshShape_getLocalScaling (ff-pointer self)))

(cl:defmethod calculate-local-inertia ((self bt-scaled-bvh-triangle-mesh-shape) (mass cl:number) (inertia bt-vector3))
  (btScaledBvhTriangleMeshShape_calculateLocalInertia (ff-pointer self) mass inertia))

(cl:defmethod process-all-triangles ((self bt-scaled-bvh-triangle-mesh-shape) (callback bt-triangle-callback) (aabbMin bt-vector3) (aabbMax bt-vector3))
  (btScaledBvhTriangleMeshShape_processAllTriangles (ff-pointer self) callback aabbMin aabbMax))

(cl:defmethod get-child-shape ((self bt-scaled-bvh-triangle-mesh-shape))
  (btScaledBvhTriangleMeshShape_getChildShape (ff-pointer self)))

(cl:defmethod get-child-shape ((self bt-scaled-bvh-triangle-mesh-shape))
  (btScaledBvhTriangleMeshShape_getChildShape (ff-pointer self)))

(cl:defmethod get-name ((self bt-scaled-bvh-triangle-mesh-shape))
  (btScaledBvhTriangleMeshShape_getName (ff-pointer self)))

(cl:defmethod calculate-serialize-buffer-size ((self bt-scaled-bvh-triangle-mesh-shape))
  (btScaledBvhTriangleMeshShape_calculateSerializeBufferSize (ff-pointer self)))

(cl:defmethod serialize ((self bt-scaled-bvh-triangle-mesh-shape) dataBuffer (serializer bt-serializer))
  (btScaledBvhTriangleMeshShape_serialize (ff-pointer self) dataBuffer serializer))


(cl:defclass bt-scaled-triangle-mesh-shape-data()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-scaled-triangle-mesh-shape-data) &key)
  (setf (slot-value obj 'ff-pointer) (new_btScaledTriangleMeshShapeData)))


(cl:defclass bt-compound-shape-child()
  ((ff-pointer :reader ff-pointer)))


(cl:defclass bt-compound-shape(btCollisionShape)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-compound-shape) &key (enableDynamicAabbTree t))
  (setf (slot-value obj 'ff-pointer) (new_btCompoundShape enableDynamicAabbTree)))

(cl:defmethod initialize-instance :after ((obj bt-compound-shape) &key)
  (setf (slot-value obj 'ff-pointer) (new_btCompoundShape)))

(cl:defmethod add-child-shape ((self bt-compound-shape) (localTransform bt-transform) (shape bt-collision-shape))
  (btCompoundShape_addChildShape (ff-pointer self) localTransform shape))

(cl:defmethod remove-child-shape ((self bt-compound-shape) (shape bt-collision-shape))
  (btCompoundShape_removeChildShape (ff-pointer self) shape))

(cl:defmethod remove-child-shape-by-index ((self bt-compound-shape) (childShapeindex cl:integer))
  (btCompoundShape_removeChildShapeByIndex (ff-pointer self) childShapeindex))

(cl:defmethod get-num-child-shapes ((self bt-compound-shape))
  (btCompoundShape_getNumChildShapes (ff-pointer self)))

(cl:defmethod get-child-shape ((self bt-compound-shape) (index cl:integer))
  (btCompoundShape_getChildShape (ff-pointer self) index))

(cl:defmethod get-child-shape ((self bt-compound-shape) (index cl:integer))
  (btCompoundShape_getChildShape (ff-pointer self) index))

(cl:defmethod get-child-transform ((self bt-compound-shape) (index cl:integer))
  (btCompoundShape_getChildTransform (ff-pointer self) index))

(cl:defmethod get-child-transform ((self bt-compound-shape) (index cl:integer))
  (btCompoundShape_getChildTransform (ff-pointer self) index))

(cl:defmethod update-child-transform ((self bt-compound-shape) (childIndex cl:integer) (newChildTransform bt-transform) (shouldRecalculateLocalAabb t))
  (btCompoundShape_updateChildTransform (ff-pointer self) childIndex newChildTransform shouldRecalculateLocalAabb))

(cl:defmethod update-child-transform ((self bt-compound-shape) (childIndex cl:integer) (newChildTransform bt-transform))
  (btCompoundShape_updateChildTransform (ff-pointer self) childIndex newChildTransform))

(cl:defmethod get-child-list ((self bt-compound-shape))
  (btCompoundShape_getChildList (ff-pointer self)))

(cl:defmethod get-aabb ((self bt-compound-shape) (t-arg1 bt-transform) (aabbMin bt-vector3) (aabbMax bt-vector3))
  (btCompoundShape_getAabb (ff-pointer self) t-arg1 aabbMin aabbMax))

(cl:defmethod recalculate-local-aabb ((self bt-compound-shape))
  (btCompoundShape_recalculateLocalAabb (ff-pointer self)))

(cl:defmethod set-local-scaling ((self bt-compound-shape) (scaling bt-vector3))
  (btCompoundShape_setLocalScaling (ff-pointer self) scaling))

(cl:defmethod get-local-scaling ((self bt-compound-shape))
  (btCompoundShape_getLocalScaling (ff-pointer self)))

(cl:defmethod calculate-local-inertia ((self bt-compound-shape) (mass cl:number) (inertia bt-vector3))
  (btCompoundShape_calculateLocalInertia (ff-pointer self) mass inertia))

(cl:defmethod set-margin ((self bt-compound-shape) (margin cl:number))
  (btCompoundShape_setMargin (ff-pointer self) margin))

(cl:defmethod get-margin ((self bt-compound-shape))
  (btCompoundShape_getMargin (ff-pointer self)))

(cl:defmethod get-name ((self bt-compound-shape))
  (btCompoundShape_getName (ff-pointer self)))

(cl:defmethod get-dynamic-aabb-tree ((self bt-compound-shape))
  (btCompoundShape_getDynamicAabbTree (ff-pointer self)))

(cl:defmethod get-dynamic-aabb-tree ((self bt-compound-shape))
  (btCompoundShape_getDynamicAabbTree (ff-pointer self)))

(cl:defmethod create-aabb-tree-from-children ((self bt-compound-shape))
  (btCompoundShape_createAabbTreeFromChildren (ff-pointer self)))

(cl:defmethod calculate-principal-axis-transform ((self bt-compound-shape) masses (principal bt-transform) (inertia bt-vector3))
  (btCompoundShape_calculatePrincipalAxisTransform (ff-pointer self) masses principal inertia))

(cl:defmethod get-update-revision ((self bt-compound-shape))
  (btCompoundShape_getUpdateRevision (ff-pointer self)))

(cl:defmethod calculate-serialize-buffer-size ((self bt-compound-shape))
  (btCompoundShape_calculateSerializeBufferSize (ff-pointer self)))

(cl:defmethod serialize ((self bt-compound-shape) dataBuffer (serializer bt-serializer))
  (btCompoundShape_serialize (ff-pointer self) dataBuffer serializer))


(cl:defclass bt-compound-shape-child-data()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-compound-shape-child-data) &key)
  (setf (slot-value obj 'ff-pointer) (new_btCompoundShapeChildData)))


(cl:defclass bt-compound-shape-data()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-compound-shape-data) &key)
  (setf (slot-value obj 'ff-pointer) (new_btCompoundShapeData)))


(cl:defclass bt-bu-simplex1to4(btPolyhedralConvexAabbCachingShape)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-bu-simplex1to4) &key)
  (setf (slot-value obj 'ff-pointer) (new_btBU_Simplex1to4)))

(cl:defmethod initialize-instance :after ((obj bt-bu-simplex1to4) &key (pt0 bt-vector3))
  (setf (slot-value obj 'ff-pointer) (new_btBU_Simplex1to4 pt0)))

(cl:defmethod initialize-instance :after ((obj bt-bu-simplex1to4) &key (pt0 bt-vector3) (pt1 bt-vector3))
  (setf (slot-value obj 'ff-pointer) (new_btBU_Simplex1to4 pt0 pt1)))

(cl:defmethod initialize-instance :after ((obj bt-bu-simplex1to4) &key (pt0 bt-vector3) (pt1 bt-vector3) (pt2 bt-vector3))
  (setf (slot-value obj 'ff-pointer) (new_btBU_Simplex1to4 pt0 pt1 pt2)))

(cl:defmethod initialize-instance :after ((obj bt-bu-simplex1to4) &key (pt0 bt-vector3) (pt1 bt-vector3) (pt2 bt-vector3) (pt3 bt-vector3))
  (setf (slot-value obj 'ff-pointer) (new_btBU_Simplex1to4 pt0 pt1 pt2 pt3)))

(cl:defmethod reset ((self bt-bu-simplex1to4))
  (btBU_Simplex1to4_reset (ff-pointer self)))

(cl:defmethod get-aabb ((self bt-bu-simplex1to4) (t-arg1 bt-transform) (aabbMin bt-vector3) (aabbMax bt-vector3))
  (btBU_Simplex1to4_getAabb (ff-pointer self) t-arg1 aabbMin aabbMax))

(cl:defmethod add-vertex ((self bt-bu-simplex1to4) (pt bt-vector3))
  (btBU_Simplex1to4_addVertex (ff-pointer self) pt))

(cl:defmethod get-num-vertices ((self bt-bu-simplex1to4))
  (btBU_Simplex1to4_getNumVertices (ff-pointer self)))

(cl:defmethod get-num-edges ((self bt-bu-simplex1to4))
  (btBU_Simplex1to4_getNumEdges (ff-pointer self)))

(cl:defmethod get-edge ((self bt-bu-simplex1to4) (i cl:integer) (pa bt-vector3) (pb bt-vector3))
  (btBU_Simplex1to4_getEdge (ff-pointer self) i pa pb))

(cl:defmethod get-vertex ((self bt-bu-simplex1to4) (i cl:integer) (vtx bt-vector3))
  (btBU_Simplex1to4_getVertex (ff-pointer self) i vtx))

(cl:defmethod get-num-planes ((self bt-bu-simplex1to4))
  (btBU_Simplex1to4_getNumPlanes (ff-pointer self)))

(cl:defmethod get-plane ((self bt-bu-simplex1to4) (planeNormal bt-vector3) (planeSupport bt-vector3) (i cl:integer))
  (btBU_Simplex1to4_getPlane (ff-pointer self) planeNormal planeSupport i))

(cl:defmethod get-index ((self bt-bu-simplex1to4) (i cl:integer))
  (btBU_Simplex1to4_getIndex (ff-pointer self) i))

(cl:defmethod is-inside ((self bt-bu-simplex1to4) (pt bt-vector3) (tolerance cl:number))
  (btBU_Simplex1to4_isInside (ff-pointer self) pt tolerance))

(cl:defmethod get-name ((self bt-bu-simplex1to4))
  (btBU_Simplex1to4_getName (ff-pointer self)))


(cl:defclass bt-empty-shape(btConcaveShape)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-empty-shape) &key)
  (setf (slot-value obj 'ff-pointer) (new_btEmptyShape)))

(cl:defmethod get-aabb ((self bt-empty-shape) (t-arg1 bt-transform) (aabbMin bt-vector3) (aabbMax bt-vector3))
  (btEmptyShape_getAabb (ff-pointer self) t-arg1 aabbMin aabbMax))

(cl:defmethod set-local-scaling ((self bt-empty-shape) (scaling bt-vector3))
  (btEmptyShape_setLocalScaling (ff-pointer self) scaling))

(cl:defmethod get-local-scaling ((self bt-empty-shape))
  (btEmptyShape_getLocalScaling (ff-pointer self)))

(cl:defmethod calculate-local-inertia ((self bt-empty-shape) (mass cl:number) (inertia bt-vector3))
  (btEmptyShape_calculateLocalInertia (ff-pointer self) mass inertia))

(cl:defmethod get-name ((self bt-empty-shape))
  (btEmptyShape_getName (ff-pointer self)))

(cl:defmethod process-all-triangles ((self bt-empty-shape) (arg1 bt-triangle-callback) (arg2 bt-vector3) (arg3 bt-vector3))
  (btEmptyShape_processAllTriangles (ff-pointer self) arg1 arg2 arg3))


(cl:defclass bt-multi-sphere-shape(btConvexInternalAabbCachingShape)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-multi-sphere-shape) &key (positions bt-vector3) radi (numSpheres cl:integer))
  (setf (slot-value obj 'ff-pointer) (new_btMultiSphereShape positions radi numSpheres)))

(cl:defmethod calculate-local-inertia ((self bt-multi-sphere-shape) (mass cl:number) (inertia bt-vector3))
  (btMultiSphereShape_calculateLocalInertia (ff-pointer self) mass inertia))

(cl:defmethod local-get-supporting-vertex-without-margin ((self bt-multi-sphere-shape) (vec bt-vector3))
  (btMultiSphereShape_localGetSupportingVertexWithoutMargin (ff-pointer self) vec))

(cl:defmethod batched-unit-vector-get-supporting-vertex-without-margin ((self bt-multi-sphere-shape) (vectors bt-vector3) (supportVerticesOut bt-vector3) (numVectors cl:integer))
  (btMultiSphereShape_batchedUnitVectorGetSupportingVertexWithoutMargin (ff-pointer self) vectors supportVerticesOut numVectors))

(cl:defmethod get-sphere-count ((self bt-multi-sphere-shape))
  (btMultiSphereShape_getSphereCount (ff-pointer self)))

(cl:defmethod get-sphere-position ((self bt-multi-sphere-shape) (index cl:integer))
  (btMultiSphereShape_getSpherePosition (ff-pointer self) index))

(cl:defmethod get-sphere-radius ((self bt-multi-sphere-shape) (index cl:integer))
  (btMultiSphereShape_getSphereRadius (ff-pointer self) index))

(cl:defmethod get-name ((self bt-multi-sphere-shape))
  (btMultiSphereShape_getName (ff-pointer self)))

(cl:defmethod calculate-serialize-buffer-size ((self bt-multi-sphere-shape))
  (btMultiSphereShape_calculateSerializeBufferSize (ff-pointer self)))

(cl:defmethod serialize ((self bt-multi-sphere-shape) dataBuffer (serializer bt-serializer))
  (btMultiSphereShape_serialize (ff-pointer self) dataBuffer serializer))


(cl:defclass bt-position-and-radius()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-position-and-radius) &key)
  (setf (slot-value obj 'ff-pointer) (new_btPositionAndRadius)))


(cl:defclass bt-multi-sphere-shape-data()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-multi-sphere-shape-data) &key)
  (setf (slot-value obj 'ff-pointer) (new_btMultiSphereShapeData)))


(cl:defclass bt-uniform-scaling-shape(btConvexShape)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-uniform-scaling-shape) &key (convexChildShape bt-convex-shape) (uniformScalingFactor cl:number))
  (setf (slot-value obj 'ff-pointer) (new_btUniformScalingShape convexChildShape uniformScalingFactor)))

(cl:defmethod local-get-supporting-vertex-without-margin ((self bt-uniform-scaling-shape) (vec bt-vector3))
  (btUniformScalingShape_localGetSupportingVertexWithoutMargin (ff-pointer self) vec))

(cl:defmethod local-get-supporting-vertex ((self bt-uniform-scaling-shape) (vec bt-vector3))
  (btUniformScalingShape_localGetSupportingVertex (ff-pointer self) vec))

(cl:defmethod batched-unit-vector-get-supporting-vertex-without-margin ((self bt-uniform-scaling-shape) (vectors bt-vector3) (supportVerticesOut bt-vector3) (numVectors cl:integer))
  (btUniformScalingShape_batchedUnitVectorGetSupportingVertexWithoutMargin (ff-pointer self) vectors supportVerticesOut numVectors))

(cl:defmethod calculate-local-inertia ((self bt-uniform-scaling-shape) (mass cl:number) (inertia bt-vector3))
  (btUniformScalingShape_calculateLocalInertia (ff-pointer self) mass inertia))

(cl:defmethod get-uniform-scaling-factor ((self bt-uniform-scaling-shape))
  (btUniformScalingShape_getUniformScalingFactor (ff-pointer self)))

(cl:defmethod get-child-shape ((self bt-uniform-scaling-shape))
  (btUniformScalingShape_getChildShape (ff-pointer self)))

(cl:defmethod get-child-shape ((self bt-uniform-scaling-shape))
  (btUniformScalingShape_getChildShape (ff-pointer self)))

(cl:defmethod get-name ((self bt-uniform-scaling-shape))
  (btUniformScalingShape_getName (ff-pointer self)))

(cl:defmethod get-aabb ((self bt-uniform-scaling-shape) (t-arg1 bt-transform) (aabbMin bt-vector3) (aabbMax bt-vector3))
  (btUniformScalingShape_getAabb (ff-pointer self) t-arg1 aabbMin aabbMax))

(cl:defmethod get-aabb-slow ((self bt-uniform-scaling-shape) (t-arg1 bt-transform) (aabbMin bt-vector3) (aabbMax bt-vector3))
  (btUniformScalingShape_getAabbSlow (ff-pointer self) t-arg1 aabbMin aabbMax))

(cl:defmethod set-local-scaling ((self bt-uniform-scaling-shape) (scaling bt-vector3))
  (btUniformScalingShape_setLocalScaling (ff-pointer self) scaling))

(cl:defmethod get-local-scaling ((self bt-uniform-scaling-shape))
  (btUniformScalingShape_getLocalScaling (ff-pointer self)))

(cl:defmethod set-margin ((self bt-uniform-scaling-shape) (margin cl:number))
  (btUniformScalingShape_setMargin (ff-pointer self) margin))

(cl:defmethod get-margin ((self bt-uniform-scaling-shape))
  (btUniformScalingShape_getMargin (ff-pointer self)))

(cl:defmethod get-num-preferred-penetration-directions ((self bt-uniform-scaling-shape))
  (btUniformScalingShape_getNumPreferredPenetrationDirections (ff-pointer self)))

(cl:defmethod get-preferred-penetration-direction ((self bt-uniform-scaling-shape) (index cl:integer) (penetrationVector bt-vector3))
  (btUniformScalingShape_getPreferredPenetrationDirection (ff-pointer self) index penetrationVector))


(cl:defclass bt-collision-algorithm-construction-info()
  ((ff-pointer :reader ff-pointer)))


(cl:defclass bt-collision-algorithm()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod process-collision ((self bt-collision-algorithm) (body0 bt-collision-object) (body1 bt-collision-object) (dispatchInfo bt-dispatcher-info) (resultOut bt-manifold-result))
  (btCollisionAlgorithm_processCollision (ff-pointer self) body0 body1 dispatchInfo resultOut))

(cl:defmethod calculate-time-of-impact ((self bt-collision-algorithm) (body0 bt-collision-object) (body1 bt-collision-object) (dispatchInfo bt-dispatcher-info) (resultOut bt-manifold-result))
  (btCollisionAlgorithm_calculateTimeOfImpact (ff-pointer self) body0 body1 dispatchInfo resultOut))

(cl:defmethod get-all-contact-manifolds ((self bt-collision-algorithm) manifoldArray)
  (btCollisionAlgorithm_getAllContactManifolds (ff-pointer self) manifoldArray))


(cl:defclass bt-activating-collision-algorithm(btCollisionAlgorithm)
  ((ff-pointer :reader ff-pointer)))


(cl:defclass bt-sphere-sphere-collision-algorithm(btActivatingCollisionAlgorithm)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-sphere-sphere-collision-algorithm) &key (mf bt-persistent-manifold) ci (body0 bt-collision-object) (body1 bt-collision-object))
  (setf (slot-value obj 'ff-pointer) (new_btSphereSphereCollisionAlgorithm mf ci body0 body1)))

(cl:defmethod initialize-instance :after ((obj bt-sphere-sphere-collision-algorithm) &key ci)
  (setf (slot-value obj 'ff-pointer) (new_btSphereSphereCollisionAlgorithm ci)))

(cl:defmethod process-collision ((self bt-sphere-sphere-collision-algorithm) (body0 bt-collision-object) (body1 bt-collision-object) (dispatchInfo bt-dispatcher-info) (resultOut bt-manifold-result))
  (btSphereSphereCollisionAlgorithm_processCollision (ff-pointer self) body0 body1 dispatchInfo resultOut))

(cl:defmethod calculate-time-of-impact ((self bt-sphere-sphere-collision-algorithm) (body0 bt-collision-object) (body1 bt-collision-object) (dispatchInfo bt-dispatcher-info) (resultOut bt-manifold-result))
  (btSphereSphereCollisionAlgorithm_calculateTimeOfImpact (ff-pointer self) body0 body1 dispatchInfo resultOut))

(cl:defmethod get-all-contact-manifolds ((self bt-sphere-sphere-collision-algorithm) manifoldArray)
  (btSphereSphereCollisionAlgorithm_getAllContactManifolds (ff-pointer self) manifoldArray))


(cl:defclass bt-collision-configuration()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod get-persistent-manifold-pool ((self bt-collision-configuration))
  (btCollisionConfiguration_getPersistentManifoldPool (ff-pointer self)))

(cl:defmethod get-collision-algorithm-pool ((self bt-collision-configuration))
  (btCollisionConfiguration_getCollisionAlgorithmPool (ff-pointer self)))

(cl:defmethod get-stack-allocator ((self bt-collision-configuration))
  (btCollisionConfiguration_getStackAllocator (ff-pointer self)))

(cl:defmethod get-collision-algorithm-create-func ((self bt-collision-configuration) (proxyType0 cl:integer) (proxyType1 cl:integer))
  (btCollisionConfiguration_getCollisionAlgorithmCreateFunc (ff-pointer self) proxyType0 proxyType1))


(cl:defclass bt-default-collision-construction-info()
  ((ff-pointer :reader ff-pointer)))


(cl:defclass bt-default-collision-configuration(btCollisionConfiguration)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-default-collision-configuration) &key constructionInfo)
  (setf (slot-value obj 'ff-pointer) (new_btDefaultCollisionConfiguration constructionInfo)))

(cl:defmethod initialize-instance :after ((obj bt-default-collision-configuration) &key)
  (setf (slot-value obj 'ff-pointer) (new_btDefaultCollisionConfiguration)))

(cl:defmethod get-persistent-manifold-pool ((self bt-default-collision-configuration))
  (btDefaultCollisionConfiguration_getPersistentManifoldPool (ff-pointer self)))

(cl:defmethod get-collision-algorithm-pool ((self bt-default-collision-configuration))
  (btDefaultCollisionConfiguration_getCollisionAlgorithmPool (ff-pointer self)))

(cl:defmethod get-stack-allocator ((self bt-default-collision-configuration))
  (btDefaultCollisionConfiguration_getStackAllocator (ff-pointer self)))

(cl:defmethod get-simplex-solver ((self bt-default-collision-configuration))
  (btDefaultCollisionConfiguration_getSimplexSolver (ff-pointer self)))

(cl:defmethod get-collision-algorithm-create-func ((self bt-default-collision-configuration) (proxyType0 cl:integer) (proxyType1 cl:integer))
  (btDefaultCollisionConfiguration_getCollisionAlgorithmCreateFunc (ff-pointer self) proxyType0 proxyType1))

(cl:defmethod set-convex-convex-multipoint-iterations ((self bt-default-collision-configuration) (numPerturbationIterations cl:integer) (minimumPointsPerturbationThreshold cl:integer))
  (btDefaultCollisionConfiguration_setConvexConvexMultipointIterations (ff-pointer self) numPerturbationIterations minimumPointsPerturbationThreshold))

(cl:defmethod set-convex-convex-multipoint-iterations ((self bt-default-collision-configuration) (numPerturbationIterations cl:integer))
  (btDefaultCollisionConfiguration_setConvexConvexMultipointIterations (ff-pointer self) numPerturbationIterations))

(cl:defmethod set-convex-convex-multipoint-iterations ((self bt-default-collision-configuration))
  (btDefaultCollisionConfiguration_setConvexConvexMultipointIterations (ff-pointer self)))

(cl:defmethod set-plane-convex-multipoint-iterations ((self bt-default-collision-configuration) (numPerturbationIterations cl:integer) (minimumPointsPerturbationThreshold cl:integer))
  (btDefaultCollisionConfiguration_setPlaneConvexMultipointIterations (ff-pointer self) numPerturbationIterations minimumPointsPerturbationThreshold))

(cl:defmethod set-plane-convex-multipoint-iterations ((self bt-default-collision-configuration) (numPerturbationIterations cl:integer))
  (btDefaultCollisionConfiguration_setPlaneConvexMultipointIterations (ff-pointer self) numPerturbationIterations))

(cl:defmethod set-plane-convex-multipoint-iterations ((self bt-default-collision-configuration))
  (btDefaultCollisionConfiguration_setPlaneConvexMultipointIterations (ff-pointer self)))


(cl:defclass bt-simple-broadphase-proxy(btBroadphaseProxy)
  ((ff-pointer :reader ff-pointer)))


(cl:defclass bt-simple-broadphase(btBroadphaseInterface)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-simple-broadphase) &key (maxProxies cl:integer) (overlappingPairCache bt-overlapping-pair-cache))
  (setf (slot-value obj 'ff-pointer) (new_btSimpleBroadphase maxProxies overlappingPairCache)))

(cl:defmethod initialize-instance :after ((obj bt-simple-broadphase) &key (maxProxies cl:integer))
  (setf (slot-value obj 'ff-pointer) (new_btSimpleBroadphase maxProxies)))

(cl:defmethod initialize-instance :after ((obj bt-simple-broadphase) &key)
  (setf (slot-value obj 'ff-pointer) (new_btSimpleBroadphase)))

(cl:defmethod create-proxy ((self bt-simple-broadphase) (aabbMin bt-vector3) (aabbMax bt-vector3) (shapeType cl:integer) userPtr (collisionFilterGroup cl:integer) (collisionFilterMask cl:integer) (dispatcher bt-dispatcher) multiSapProxy)
  (btSimpleBroadphase_createProxy (ff-pointer self) aabbMin aabbMax shapeType userPtr collisionFilterGroup collisionFilterMask dispatcher multiSapProxy))

(cl:defmethod calculate-overlapping-pairs ((self bt-simple-broadphase) (dispatcher bt-dispatcher))
  (btSimpleBroadphase_calculateOverlappingPairs (ff-pointer self) dispatcher))

(cl:defmethod destroy-proxy ((self bt-simple-broadphase) (proxy bt-broadphase-proxy) (dispatcher bt-dispatcher))
  (btSimpleBroadphase_destroyProxy (ff-pointer self) proxy dispatcher))

(cl:defmethod set-aabb ((self bt-simple-broadphase) (proxy bt-broadphase-proxy) (aabbMin bt-vector3) (aabbMax bt-vector3) (dispatcher bt-dispatcher))
  (btSimpleBroadphase_setAabb (ff-pointer self) proxy aabbMin aabbMax dispatcher))

(cl:defmethod get-aabb ((self bt-simple-broadphase) (proxy bt-broadphase-proxy) (aabbMin bt-vector3) (aabbMax bt-vector3))
  (btSimpleBroadphase_getAabb (ff-pointer self) proxy aabbMin aabbMax))

(cl:defmethod ray-test ((self bt-simple-broadphase) (rayFrom bt-vector3) (rayTo bt-vector3) (rayCallback bt-broadphase-ray-callback) (aabbMin bt-vector3) (aabbMax bt-vector3))
  (btSimpleBroadphase_rayTest (ff-pointer self) rayFrom rayTo rayCallback aabbMin aabbMax))

(cl:defmethod ray-test ((self bt-simple-broadphase) (rayFrom bt-vector3) (rayTo bt-vector3) (rayCallback bt-broadphase-ray-callback) (aabbMin bt-vector3))
  (btSimpleBroadphase_rayTest (ff-pointer self) rayFrom rayTo rayCallback aabbMin))

(cl:defmethod ray-test ((self bt-simple-broadphase) (rayFrom bt-vector3) (rayTo bt-vector3) (rayCallback bt-broadphase-ray-callback))
  (btSimpleBroadphase_rayTest (ff-pointer self) rayFrom rayTo rayCallback))

(cl:defmethod aabb-test ((self bt-simple-broadphase) (aabbMin bt-vector3) (aabbMax bt-vector3) (callback bt-broadphase-aabb-callback))
  (btSimpleBroadphase_aabbTest (ff-pointer self) aabbMin aabbMax callback))

(cl:defmethod get-overlapping-pair-cache ((self bt-simple-broadphase))
  (btSimpleBroadphase_getOverlappingPairCache (ff-pointer self)))

(cl:defmethod get-overlapping-pair-cache ((self bt-simple-broadphase))
  (btSimpleBroadphase_getOverlappingPairCache (ff-pointer self)))

(cl:defmethod test-aabb-overlap ((self bt-simple-broadphase) (proxy0 bt-broadphase-proxy) (proxy1 bt-broadphase-proxy))
  (btSimpleBroadphase_testAabbOverlap (ff-pointer self) proxy0 proxy1))

(cl:defmethod get-broadphase-aabb ((self bt-simple-broadphase) (aabbMin bt-vector3) (aabbMax bt-vector3))
  (btSimpleBroadphase_getBroadphaseAabb (ff-pointer self) aabbMin aabbMax))

(cl:defmethod print-stats ((self bt-simple-broadphase))
  (btSimpleBroadphase_printStats (ff-pointer self)))


(cl:defclass bt-dbvt-aabb-mm()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-dbvt-aabb-mm) &key)
  (setf (slot-value obj 'ff-pointer) (new_btDbvtAabbMm)))


(cl:defclass bt-dbvt-node()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-dbvt-node) &key)
  (setf (slot-value obj 'ff-pointer) (new_btDbvtNode)))


(cl:defclass bt-dbvt()
  ((ff-pointer :reader ff-pointer)))


(cl:defclass bt-dbvt-proxy()
  ((ff-pointer :reader ff-pointer)))


(cl:defclass bt-dbvt-broadphase()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod (cl:setf m_sets) (arg0 (obj bt-dbvt-broadphase))
  (btDbvtBroadphase_m_sets_set (ff-pointer obj) arg0))

(cl:defmethod m_sets ((obj bt-dbvt-broadphase))
  (btDbvtBroadphase_m_sets_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_stageRoots) (arg0 (obj bt-dbvt-broadphase))
  (btDbvtBroadphase_m_stageRoots_set (ff-pointer obj) arg0))

(cl:defmethod m_stageRoots ((obj bt-dbvt-broadphase))
  (btDbvtBroadphase_m_stageRoots_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_paircache) (arg0 (obj bt-dbvt-broadphase))
  (btDbvtBroadphase_m_paircache_set (ff-pointer obj) arg0))

(cl:defmethod m_paircache ((obj bt-dbvt-broadphase))
  (btDbvtBroadphase_m_paircache_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_prediction) (arg0 (obj bt-dbvt-broadphase))
  (btDbvtBroadphase_m_prediction_set (ff-pointer obj) arg0))

(cl:defmethod m_prediction ((obj bt-dbvt-broadphase))
  (btDbvtBroadphase_m_prediction_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_stageCurrent) (arg0 (obj bt-dbvt-broadphase))
  (btDbvtBroadphase_m_stageCurrent_set (ff-pointer obj) arg0))

(cl:defmethod m_stageCurrent ((obj bt-dbvt-broadphase))
  (btDbvtBroadphase_m_stageCurrent_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_fupdates) (arg0 (obj bt-dbvt-broadphase))
  (btDbvtBroadphase_m_fupdates_set (ff-pointer obj) arg0))

(cl:defmethod m_fupdates ((obj bt-dbvt-broadphase))
  (btDbvtBroadphase_m_fupdates_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_dupdates) (arg0 (obj bt-dbvt-broadphase))
  (btDbvtBroadphase_m_dupdates_set (ff-pointer obj) arg0))

(cl:defmethod m_dupdates ((obj bt-dbvt-broadphase))
  (btDbvtBroadphase_m_dupdates_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_cupdates) (arg0 (obj bt-dbvt-broadphase))
  (btDbvtBroadphase_m_cupdates_set (ff-pointer obj) arg0))

(cl:defmethod m_cupdates ((obj bt-dbvt-broadphase))
  (btDbvtBroadphase_m_cupdates_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_newpairs) (arg0 (obj bt-dbvt-broadphase))
  (btDbvtBroadphase_m_newpairs_set (ff-pointer obj) arg0))

(cl:defmethod m_newpairs ((obj bt-dbvt-broadphase))
  (btDbvtBroadphase_m_newpairs_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_fixedleft) (arg0 (obj bt-dbvt-broadphase))
  (btDbvtBroadphase_m_fixedleft_set (ff-pointer obj) arg0))

(cl:defmethod m_fixedleft ((obj bt-dbvt-broadphase))
  (btDbvtBroadphase_m_fixedleft_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_updates_call) (arg0 (obj bt-dbvt-broadphase))
  (btDbvtBroadphase_m_updates_call_set (ff-pointer obj) arg0))

(cl:defmethod m_updates_call ((obj bt-dbvt-broadphase))
  (btDbvtBroadphase_m_updates_call_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_updates_done) (arg0 (obj bt-dbvt-broadphase))
  (btDbvtBroadphase_m_updates_done_set (ff-pointer obj) arg0))

(cl:defmethod m_updates_done ((obj bt-dbvt-broadphase))
  (btDbvtBroadphase_m_updates_done_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_updates_ratio) (arg0 (obj bt-dbvt-broadphase))
  (btDbvtBroadphase_m_updates_ratio_set (ff-pointer obj) arg0))

(cl:defmethod m_updates_ratio ((obj bt-dbvt-broadphase))
  (btDbvtBroadphase_m_updates_ratio_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_pid) (arg0 (obj bt-dbvt-broadphase))
  (btDbvtBroadphase_m_pid_set (ff-pointer obj) arg0))

(cl:defmethod m_pid ((obj bt-dbvt-broadphase))
  (btDbvtBroadphase_m_pid_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_cid) (arg0 (obj bt-dbvt-broadphase))
  (btDbvtBroadphase_m_cid_set (ff-pointer obj) arg0))

(cl:defmethod m_cid ((obj bt-dbvt-broadphase))
  (btDbvtBroadphase_m_cid_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_gid) (arg0 (obj bt-dbvt-broadphase))
  (btDbvtBroadphase_m_gid_set (ff-pointer obj) arg0))

(cl:defmethod m_gid ((obj bt-dbvt-broadphase))
  (btDbvtBroadphase_m_gid_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_releasepaircache) (arg0 (obj bt-dbvt-broadphase))
  (btDbvtBroadphase_m_releasepaircache_set (ff-pointer obj) arg0))

(cl:defmethod m_releasepaircache ((obj bt-dbvt-broadphase))
  (btDbvtBroadphase_m_releasepaircache_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_deferedcollide) (arg0 (obj bt-dbvt-broadphase))
  (btDbvtBroadphase_m_deferedcollide_set (ff-pointer obj) arg0))

(cl:defmethod m_deferedcollide ((obj bt-dbvt-broadphase))
  (btDbvtBroadphase_m_deferedcollide_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_needcleanup) (arg0 (obj bt-dbvt-broadphase))
  (btDbvtBroadphase_m_needcleanup_set (ff-pointer obj) arg0))

(cl:defmethod m_needcleanup ((obj bt-dbvt-broadphase))
  (btDbvtBroadphase_m_needcleanup_get (ff-pointer obj)))

(cl:defmethod initialize-instance :after ((obj bt-dbvt-broadphase) &key (paircache bt-overlapping-pair-cache))
  (setf (slot-value obj 'ff-pointer) (new_btDbvtBroadphase paircache)))

(cl:defmethod initialize-instance :after ((obj bt-dbvt-broadphase) &key)
  (setf (slot-value obj 'ff-pointer) (new_btDbvtBroadphase)))

(cl:defmethod collide ((self bt-dbvt-broadphase) (dispatcher bt-dispatcher))
  (btDbvtBroadphase_collide (ff-pointer self) dispatcher))

(cl:defmethod optimize ((self bt-dbvt-broadphase))
  (btDbvtBroadphase_optimize (ff-pointer self)))

(cl:defmethod create-proxy ((self bt-dbvt-broadphase) (aabbMin bt-vector3) (aabbMax bt-vector3) (shapeType cl:integer) userPtr (collisionFilterGroup cl:integer) (collisionFilterMask cl:integer) (dispatcher bt-dispatcher) multiSapProxy)
  (btDbvtBroadphase_createProxy (ff-pointer self) aabbMin aabbMax shapeType userPtr collisionFilterGroup collisionFilterMask dispatcher multiSapProxy))

(cl:defmethod destroy-proxy ((self bt-dbvt-broadphase) (proxy bt-broadphase-proxy) (dispatcher bt-dispatcher))
  (btDbvtBroadphase_destroyProxy (ff-pointer self) proxy dispatcher))

(cl:defmethod set-aabb ((self bt-dbvt-broadphase) (proxy bt-broadphase-proxy) (aabbMin bt-vector3) (aabbMax bt-vector3) (dispatcher bt-dispatcher))
  (btDbvtBroadphase_setAabb (ff-pointer self) proxy aabbMin aabbMax dispatcher))

(cl:defmethod ray-test ((self bt-dbvt-broadphase) (rayFrom bt-vector3) (rayTo bt-vector3) (rayCallback bt-broadphase-ray-callback) (aabbMin bt-vector3) (aabbMax bt-vector3))
  (btDbvtBroadphase_rayTest (ff-pointer self) rayFrom rayTo rayCallback aabbMin aabbMax))

(cl:defmethod ray-test ((self bt-dbvt-broadphase) (rayFrom bt-vector3) (rayTo bt-vector3) (rayCallback bt-broadphase-ray-callback) (aabbMin bt-vector3))
  (btDbvtBroadphase_rayTest (ff-pointer self) rayFrom rayTo rayCallback aabbMin))

(cl:defmethod ray-test ((self bt-dbvt-broadphase) (rayFrom bt-vector3) (rayTo bt-vector3) (rayCallback bt-broadphase-ray-callback))
  (btDbvtBroadphase_rayTest (ff-pointer self) rayFrom rayTo rayCallback))

(cl:defmethod aabb-test ((self bt-dbvt-broadphase) (aabbMin bt-vector3) (aabbMax bt-vector3) (callback bt-broadphase-aabb-callback))
  (btDbvtBroadphase_aabbTest (ff-pointer self) aabbMin aabbMax callback))

(cl:defmethod get-aabb ((self bt-dbvt-broadphase) (proxy bt-broadphase-proxy) (aabbMin bt-vector3) (aabbMax bt-vector3))
  (btDbvtBroadphase_getAabb (ff-pointer self) proxy aabbMin aabbMax))

(cl:defmethod calculate-overlapping-pairs ((self bt-dbvt-broadphase) (dispatcher bt-dispatcher))
  (btDbvtBroadphase_calculateOverlappingPairs (ff-pointer self) dispatcher))

(cl:defmethod get-overlapping-pair-cache ((self bt-dbvt-broadphase))
  (btDbvtBroadphase_getOverlappingPairCache (ff-pointer self)))

(cl:defmethod get-overlapping-pair-cache ((self bt-dbvt-broadphase))
  (btDbvtBroadphase_getOverlappingPairCache (ff-pointer self)))

(cl:defmethod get-broadphase-aabb ((self bt-dbvt-broadphase) (aabbMin bt-vector3) (aabbMax bt-vector3))
  (btDbvtBroadphase_getBroadphaseAabb (ff-pointer self) aabbMin aabbMax))

(cl:defmethod print-stats ((self bt-dbvt-broadphase))
  (btDbvtBroadphase_printStats (ff-pointer self)))

(cl:defmethod reset-pool ((self bt-dbvt-broadphase) (dispatcher bt-dispatcher))
  (btDbvtBroadphase_resetPool (ff-pointer self) dispatcher))

(cl:defmethod perform-deferred-removal ((self bt-dbvt-broadphase) (dispatcher bt-dispatcher))
  (btDbvtBroadphase_performDeferredRemoval (ff-pointer self) dispatcher))

(cl:defmethod set-velocity-prediction ((self bt-dbvt-broadphase) (prediction cl:number))
  (btDbvtBroadphase_setVelocityPrediction (ff-pointer self) prediction))

(cl:defmethod get-velocity-prediction ((self bt-dbvt-broadphase))
  (btDbvtBroadphase_getVelocityPrediction (ff-pointer self)))

(cl:defmethod set-aabb-force-update ((self bt-dbvt-broadphase) (absproxy bt-broadphase-proxy) (aabbMin bt-vector3) (aabbMax bt-vector3) (arg4 bt-dispatcher))
  (btDbvtBroadphase_setAabbForceUpdate (ff-pointer self) absproxy aabbMin aabbMax arg4))


(cl:defclass bt-axis-sweep3()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-axis-sweep3) &key (worldAabbMin bt-vector3) (worldAabbMax bt-vector3) (maxHandles cl:integer) (pairCache bt-overlapping-pair-cache) (disableRaycastAccelerator t))
  (setf (slot-value obj 'ff-pointer) (new_btAxisSweep3 worldAabbMin worldAabbMax maxHandles pairCache disableRaycastAccelerator)))

(cl:defmethod initialize-instance :after ((obj bt-axis-sweep3) &key (worldAabbMin bt-vector3) (worldAabbMax bt-vector3) (maxHandles cl:integer) (pairCache bt-overlapping-pair-cache))
  (setf (slot-value obj 'ff-pointer) (new_btAxisSweep3 worldAabbMin worldAabbMax maxHandles pairCache)))

(cl:defmethod initialize-instance :after ((obj bt-axis-sweep3) &key (worldAabbMin bt-vector3) (worldAabbMax bt-vector3) (maxHandles cl:integer))
  (setf (slot-value obj 'ff-pointer) (new_btAxisSweep3 worldAabbMin worldAabbMax maxHandles)))

(cl:defmethod initialize-instance :after ((obj bt-axis-sweep3) &key (worldAabbMin bt-vector3) (worldAabbMax bt-vector3))
  (setf (slot-value obj 'ff-pointer) (new_btAxisSweep3 worldAabbMin worldAabbMax)))


(cl:defclass bt32-bit-axis-sweep3()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt32-bit-axis-sweep3) &key (worldAabbMin bt-vector3) (worldAabbMax bt-vector3) (maxHandles cl:integer) (pairCache bt-overlapping-pair-cache) (disableRaycastAccelerator t))
  (setf (slot-value obj 'ff-pointer) (new_bt32BitAxisSweep3 worldAabbMin worldAabbMax maxHandles pairCache disableRaycastAccelerator)))

(cl:defmethod initialize-instance :after ((obj bt32-bit-axis-sweep3) &key (worldAabbMin bt-vector3) (worldAabbMax bt-vector3) (maxHandles cl:integer) (pairCache bt-overlapping-pair-cache))
  (setf (slot-value obj 'ff-pointer) (new_bt32BitAxisSweep3 worldAabbMin worldAabbMax maxHandles pairCache)))

(cl:defmethod initialize-instance :after ((obj bt32-bit-axis-sweep3) &key (worldAabbMin bt-vector3) (worldAabbMax bt-vector3) (maxHandles cl:integer))
  (setf (slot-value obj 'ff-pointer) (new_bt32BitAxisSweep3 worldAabbMin worldAabbMax maxHandles)))

(cl:defmethod initialize-instance :after ((obj bt32-bit-axis-sweep3) &key (worldAabbMin bt-vector3) (worldAabbMax bt-vector3))
  (setf (slot-value obj 'ff-pointer) (new_bt32BitAxisSweep3 worldAabbMin worldAabbMax)))


(cl:defclass bt-multi-sap-broadphase(btBroadphaseInterface)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod get-broadphase-array ((self bt-multi-sap-broadphase))
  (btMultiSapBroadphase_getBroadphaseArray (ff-pointer self)))

(cl:defmethod get-broadphase-array ((self bt-multi-sap-broadphase))
  (btMultiSapBroadphase_getBroadphaseArray (ff-pointer self)))

(cl:defmethod create-proxy ((self bt-multi-sap-broadphase) (aabbMin bt-vector3) (aabbMax bt-vector3) (shapeType cl:integer) userPtr (collisionFilterGroup cl:integer) (collisionFilterMask cl:integer) (dispatcher bt-dispatcher) multiSapProxy)
  (btMultiSapBroadphase_createProxy (ff-pointer self) aabbMin aabbMax shapeType userPtr collisionFilterGroup collisionFilterMask dispatcher multiSapProxy))

(cl:defmethod destroy-proxy ((self bt-multi-sap-broadphase) (proxy bt-broadphase-proxy) (dispatcher bt-dispatcher))
  (btMultiSapBroadphase_destroyProxy (ff-pointer self) proxy dispatcher))

(cl:defmethod set-aabb ((self bt-multi-sap-broadphase) (proxy bt-broadphase-proxy) (aabbMin bt-vector3) (aabbMax bt-vector3) (dispatcher bt-dispatcher))
  (btMultiSapBroadphase_setAabb (ff-pointer self) proxy aabbMin aabbMax dispatcher))

(cl:defmethod get-aabb ((self bt-multi-sap-broadphase) (proxy bt-broadphase-proxy) (aabbMin bt-vector3) (aabbMax bt-vector3))
  (btMultiSapBroadphase_getAabb (ff-pointer self) proxy aabbMin aabbMax))

(cl:defmethod ray-test ((self bt-multi-sap-broadphase) (rayFrom bt-vector3) (rayTo bt-vector3) (rayCallback bt-broadphase-ray-callback) (aabbMin bt-vector3) (aabbMax bt-vector3))
  (btMultiSapBroadphase_rayTest (ff-pointer self) rayFrom rayTo rayCallback aabbMin aabbMax))

(cl:defmethod ray-test ((self bt-multi-sap-broadphase) (rayFrom bt-vector3) (rayTo bt-vector3) (rayCallback bt-broadphase-ray-callback) (aabbMin bt-vector3))
  (btMultiSapBroadphase_rayTest (ff-pointer self) rayFrom rayTo rayCallback aabbMin))

(cl:defmethod ray-test ((self bt-multi-sap-broadphase) (rayFrom bt-vector3) (rayTo bt-vector3) (rayCallback bt-broadphase-ray-callback))
  (btMultiSapBroadphase_rayTest (ff-pointer self) rayFrom rayTo rayCallback))

(cl:defmethod add-to-child-broadphase ((self bt-multi-sap-broadphase) parentMultiSapProxy (childProxy bt-broadphase-proxy) (childBroadphase bt-broadphase-interface))
  (btMultiSapBroadphase_addToChildBroadphase (ff-pointer self) parentMultiSapProxy childProxy childBroadphase))

(cl:defmethod calculate-overlapping-pairs ((self bt-multi-sap-broadphase) (dispatcher bt-dispatcher))
  (btMultiSapBroadphase_calculateOverlappingPairs (ff-pointer self) dispatcher))

(cl:defmethod test-aabb-overlap ((self bt-multi-sap-broadphase) (proxy0 bt-broadphase-proxy) (proxy1 bt-broadphase-proxy))
  (btMultiSapBroadphase_testAabbOverlap (ff-pointer self) proxy0 proxy1))

(cl:defmethod get-overlapping-pair-cache ((self bt-multi-sap-broadphase))
  (btMultiSapBroadphase_getOverlappingPairCache (ff-pointer self)))

(cl:defmethod get-overlapping-pair-cache ((self bt-multi-sap-broadphase))
  (btMultiSapBroadphase_getOverlappingPairCache (ff-pointer self)))

(cl:defmethod get-broadphase-aabb ((self bt-multi-sap-broadphase) (aabbMin bt-vector3) (aabbMax bt-vector3))
  (btMultiSapBroadphase_getBroadphaseAabb (ff-pointer self) aabbMin aabbMax))

(cl:defmethod build-tree ((self bt-multi-sap-broadphase) (bvhAabbMin bt-vector3) (bvhAabbMax bt-vector3))
  (btMultiSapBroadphase_buildTree (ff-pointer self) bvhAabbMin bvhAabbMax))

(cl:defmethod print-stats ((self bt-multi-sap-broadphase))
  (btMultiSapBroadphase_printStats (ff-pointer self)))

(cl:defmethod quicksort ((self bt-multi-sap-broadphase) a (lo cl:integer) (hi cl:integer))
  (btMultiSapBroadphase_quicksort (ff-pointer self) a lo hi))

(cl:defmethod reset-pool ((self bt-multi-sap-broadphase) (dispatcher bt-dispatcher))
  (btMultiSapBroadphase_resetPool (ff-pointer self) dispatcher))


(cl:defclass bt-clock()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-clock) &key)
  (setf (slot-value obj 'ff-pointer) (new_btClock)))

(cl:defmethod initialize-instance :after ((obj bt-clock) &key (other bt-clock))
  (setf (slot-value obj 'ff-pointer) (new_btClock (ff-pointer other))))

(cl:shadow "=")
(cl:defmethod = ((self bt-clock) (other bt-clock))
  (btClock___assign__ (ff-pointer self) (ff-pointer other)))

(cl:defmethod reset ((self bt-clock))
  (btClock_reset (ff-pointer self)))

(cl:defmethod get-time-milliseconds ((self bt-clock))
  (btClock_getTimeMilliseconds (ff-pointer self)))

(cl:defmethod get-time-microseconds ((self bt-clock))
  (btClock_getTimeMicroseconds (ff-pointer self)))


(cl:defclass cprofile-node()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj cprofile-node) &key (name cl:string) (parent cprofile-node))
  (setf (slot-value obj 'ff-pointer) (new_CProfileNode name (ff-pointer parent))))

(cl:defmethod get-sub-node ((self cprofile-node) (name cl:string))
  (CProfileNode_Get_Sub_Node (ff-pointer self) name))

(cl:defmethod get-parent ((self cprofile-node))
  (CProfileNode_Get_Parent (ff-pointer self)))

(cl:defmethod get-sibling ((self cprofile-node))
  (CProfileNode_Get_Sibling (ff-pointer self)))

(cl:defmethod get-child ((self cprofile-node))
  (CProfileNode_Get_Child (ff-pointer self)))

(cl:defmethod cleanup-memory ((self cprofile-node))
  (CProfileNode_CleanupMemory (ff-pointer self)))

(cl:defmethod reset ((self cprofile-node))
  (CProfileNode_Reset (ff-pointer self)))

(cl:defmethod call ((self cprofile-node))
  (CProfileNode_Call (ff-pointer self)))

(cl:defmethod return ((self cprofile-node))
  (CProfileNode_Return (ff-pointer self)))

(cl:defmethod get-name ((self cprofile-node))
  (CProfileNode_Get_Name (ff-pointer self)))

(cl:defmethod get-total-calls ((self cprofile-node))
  (CProfileNode_Get_Total_Calls (ff-pointer self)))

(cl:defmethod get-total-time ((self cprofile-node))
  (CProfileNode_Get_Total_Time (ff-pointer self)))

(cl:defmethod get-user-pointer ((self cprofile-node))
  (CProfileNode_GetUserPointer (ff-pointer self)))

(cl:defmethod set-user-pointer ((self cprofile-node) ptr)
  (CProfileNode_SetUserPointer (ff-pointer self) ptr))


(cl:defclass cprofile-iterator()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod first ((self cprofile-iterator))
  (CProfileIterator_First (ff-pointer self)))

(cl:defmethod next ((self cprofile-iterator))
  (CProfileIterator_Next (ff-pointer self)))

(cl:defmethod is-done ((self cprofile-iterator))
  (CProfileIterator_Is_Done (ff-pointer self)))

(cl:defmethod is-root ((self cprofile-iterator))
  (CProfileIterator_Is_Root (ff-pointer self)))

(cl:defmethod enter-child ((self cprofile-iterator) (index cl:integer))
  (CProfileIterator_Enter_Child (ff-pointer self) index))

(cl:defmethod enter-largest-child ((self cprofile-iterator))
  (CProfileIterator_Enter_Largest_Child (ff-pointer self)))

(cl:defmethod enter-parent ((self cprofile-iterator))
  (CProfileIterator_Enter_Parent (ff-pointer self)))

(cl:defmethod get-current-name ((self cprofile-iterator))
  (CProfileIterator_Get_Current_Name (ff-pointer self)))

(cl:defmethod get-current-total-calls ((self cprofile-iterator))
  (CProfileIterator_Get_Current_Total_Calls (ff-pointer self)))

(cl:defmethod get-current-total-time ((self cprofile-iterator))
  (CProfileIterator_Get_Current_Total_Time (ff-pointer self)))

(cl:defmethod get-current-user-pointer ((self cprofile-iterator))
  (CProfileIterator_Get_Current_UserPointer (ff-pointer self)))

(cl:defmethod set-current-user-pointer ((self cprofile-iterator) ptr)
  (CProfileIterator_Set_Current_UserPointer (ff-pointer self) ptr))

(cl:defmethod get-current-parent-name ((self cprofile-iterator))
  (CProfileIterator_Get_Current_Parent_Name (ff-pointer self)))

(cl:defmethod get-current-parent-total-calls ((self cprofile-iterator))
  (CProfileIterator_Get_Current_Parent_Total_Calls (ff-pointer self)))

(cl:defmethod get-current-parent-total-time ((self cprofile-iterator))
  (CProfileIterator_Get_Current_Parent_Total_Time (ff-pointer self)))


(cl:defclass cprofile-manager()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj cprofile-manager) &key)
  (setf (slot-value obj 'ff-pointer) (new_CProfileManager)))


(cl:defclass cprofile-sample()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj cprofile-sample) &key (name cl:string))
  (setf (slot-value obj 'ff-pointer) (new_CProfileSample name)))


(cl:defclass bt-idebug-draw()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod draw-line ((self bt-idebug-draw) (from bt-vector3) (to bt-vector3) (color bt-vector3))
  (btIDebugDraw_drawLine (ff-pointer self) from to color))

(cl:defmethod draw-line ((self bt-idebug-draw) (from bt-vector3) (to bt-vector3) (fromColor bt-vector3) (toColor bt-vector3))
  (btIDebugDraw_drawLine (ff-pointer self) from to fromColor toColor))

(cl:defmethod draw-sphere ((self bt-idebug-draw) (radius cl:number) (transform bt-transform) (color bt-vector3))
  (btIDebugDraw_drawSphere (ff-pointer self) radius transform color))

(cl:defmethod draw-sphere ((self bt-idebug-draw) (p bt-vector3) (radius cl:number) (color bt-vector3))
  (btIDebugDraw_drawSphere (ff-pointer self) p radius color))

(cl:defmethod draw-triangle ((self bt-idebug-draw) (v0 bt-vector3) (v1 bt-vector3) (v2 bt-vector3) (arg4 bt-vector3) (arg5 bt-vector3) (arg6 bt-vector3) (color bt-vector3) (alpha cl:number))
  (btIDebugDraw_drawTriangle (ff-pointer self) v0 v1 v2 arg4 arg5 arg6 color alpha))

(cl:defmethod draw-triangle ((self bt-idebug-draw) (v0 bt-vector3) (v1 bt-vector3) (v2 bt-vector3) (color bt-vector3) (arg5 cl:number))
  (btIDebugDraw_drawTriangle (ff-pointer self) v0 v1 v2 color arg5))

(cl:defmethod draw-contact-point ((self bt-idebug-draw) (PointOnB bt-vector3) (normalOnB bt-vector3) (distance cl:number) (lifeTime cl:integer) (color bt-vector3))
  (btIDebugDraw_drawContactPoint (ff-pointer self) PointOnB normalOnB distance lifeTime color))

(cl:defmethod report-error-warning ((self bt-idebug-draw) (warningString cl:string))
  (btIDebugDraw_reportErrorWarning (ff-pointer self) warningString))

(cl:defmethod draw3d-text ((self bt-idebug-draw) (location bt-vector3) (textString cl:string))
  (btIDebugDraw_draw3dText (ff-pointer self) location textString))

(cl:defmethod set-debug-mode ((self bt-idebug-draw) (debugMode cl:integer))
  (btIDebugDraw_setDebugMode (ff-pointer self) debugMode))

(cl:defmethod get-debug-mode ((self bt-idebug-draw))
  (btIDebugDraw_getDebugMode (ff-pointer self)))

(cl:defmethod draw-aabb ((self bt-idebug-draw) (from bt-vector3) (to bt-vector3) (color bt-vector3))
  (btIDebugDraw_drawAabb (ff-pointer self) from to color))

(cl:defmethod draw-transform ((self bt-idebug-draw) (transform bt-transform) (orthoLen cl:number))
  (btIDebugDraw_drawTransform (ff-pointer self) transform orthoLen))

(cl:defmethod draw-arc ((self bt-idebug-draw) (center bt-vector3) (normal bt-vector3) (axis bt-vector3) (radiusA cl:number) (radiusB cl:number) (minAngle cl:number) (maxAngle cl:number) (color bt-vector3) (drawSect t) (stepDegrees cl:number))
  (btIDebugDraw_drawArc (ff-pointer self) center normal axis radiusA radiusB minAngle maxAngle color drawSect stepDegrees))

(cl:defmethod draw-arc ((self bt-idebug-draw) (center bt-vector3) (normal bt-vector3) (axis bt-vector3) (radiusA cl:number) (radiusB cl:number) (minAngle cl:number) (maxAngle cl:number) (color bt-vector3) (drawSect t))
  (btIDebugDraw_drawArc (ff-pointer self) center normal axis radiusA radiusB minAngle maxAngle color drawSect))

(cl:defmethod draw-sphere-patch ((self bt-idebug-draw) (center bt-vector3) (up bt-vector3) (axis bt-vector3) (radius cl:number) (minTh cl:number) (maxTh cl:number) (minPs cl:number) (maxPs cl:number) (color bt-vector3) (stepDegrees cl:number))
  (btIDebugDraw_drawSpherePatch (ff-pointer self) center up axis radius minTh maxTh minPs maxPs color stepDegrees))

(cl:defmethod draw-sphere-patch ((self bt-idebug-draw) (center bt-vector3) (up bt-vector3) (axis bt-vector3) (radius cl:number) (minTh cl:number) (maxTh cl:number) (minPs cl:number) (maxPs cl:number) (color bt-vector3))
  (btIDebugDraw_drawSpherePatch (ff-pointer self) center up axis radius minTh maxTh minPs maxPs color))

(cl:defmethod draw-box ((self bt-idebug-draw) (bbMin bt-vector3) (bbMax bt-vector3) (color bt-vector3))
  (btIDebugDraw_drawBox (ff-pointer self) bbMin bbMax color))

(cl:defmethod draw-box ((self bt-idebug-draw) (bbMin bt-vector3) (bbMax bt-vector3) (trans bt-transform) (color bt-vector3))
  (btIDebugDraw_drawBox (ff-pointer self) bbMin bbMax trans color))

(cl:defmethod draw-capsule ((self bt-idebug-draw) (radius cl:number) (halfHeight cl:number) (upAxis cl:integer) (transform bt-transform) (color bt-vector3))
  (btIDebugDraw_drawCapsule (ff-pointer self) radius halfHeight upAxis transform color))

(cl:defmethod draw-cylinder ((self bt-idebug-draw) (radius cl:number) (halfHeight cl:number) (upAxis cl:integer) (transform bt-transform) (color bt-vector3))
  (btIDebugDraw_drawCylinder (ff-pointer self) radius halfHeight upAxis transform color))

(cl:defmethod draw-cone ((self bt-idebug-draw) (radius cl:number) (height cl:number) (upAxis cl:integer) (transform bt-transform) (color bt-vector3))
  (btIDebugDraw_drawCone (ff-pointer self) radius height upAxis transform color))

(cl:defmethod draw-plane ((self bt-idebug-draw) (planeNormal bt-vector3) (planeConst cl:number) (transform bt-transform) (color bt-vector3))
  (btIDebugDraw_drawPlane (ff-pointer self) planeNormal planeConst transform color))


(cl:defclass bt-contact-solver-info-data()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-contact-solver-info-data) &key)
  (setf (slot-value obj 'ff-pointer) (new_btContactSolverInfoData)))


(cl:defclass bt-contact-solver-info(btContactSolverInfoData)
  ((ff-pointer :reader ff-pointer)))


(cl:defclass bt-dynamics-world(btCollisionWorld)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod step-simulation ((self bt-dynamics-world) (timeStep cl:number) (maxSubSteps cl:integer) (fixedTimeStep cl:number))
  (btDynamicsWorld_stepSimulation (ff-pointer self) timeStep maxSubSteps fixedTimeStep))

(cl:defmethod step-simulation ((self bt-dynamics-world) (timeStep cl:number) (maxSubSteps cl:integer))
  (btDynamicsWorld_stepSimulation (ff-pointer self) timeStep maxSubSteps))

(cl:defmethod step-simulation ((self bt-dynamics-world) (timeStep cl:number))
  (btDynamicsWorld_stepSimulation (ff-pointer self) timeStep))

(cl:defmethod debug-draw-world ((self bt-dynamics-world))
  (btDynamicsWorld_debugDrawWorld (ff-pointer self)))

(cl:defmethod add-constraint ((self bt-dynamics-world) constraint (disableCollisionsBetweenLinkedBodies t))
  (btDynamicsWorld_addConstraint (ff-pointer self) constraint disableCollisionsBetweenLinkedBodies))

(cl:defmethod add-constraint ((self bt-dynamics-world) constraint)
  (btDynamicsWorld_addConstraint (ff-pointer self) constraint))

(cl:defmethod remove-constraint ((self bt-dynamics-world) constraint)
  (btDynamicsWorld_removeConstraint (ff-pointer self) constraint))

(cl:defmethod add-action ((self bt-dynamics-world) action)
  (btDynamicsWorld_addAction (ff-pointer self) action))

(cl:defmethod remove-action ((self bt-dynamics-world) action)
  (btDynamicsWorld_removeAction (ff-pointer self) action))

(cl:defmethod set-gravity ((self bt-dynamics-world) (gravity bt-vector3))
  (btDynamicsWorld_setGravity (ff-pointer self) gravity))

(cl:defmethod get-gravity ((self bt-dynamics-world))
  (btDynamicsWorld_getGravity (ff-pointer self)))

(cl:defmethod synchronize-motion-states ((self bt-dynamics-world))
  (btDynamicsWorld_synchronizeMotionStates (ff-pointer self)))

(cl:defmethod add-rigid-body ((self bt-dynamics-world) body)
  (btDynamicsWorld_addRigidBody (ff-pointer self) body))

(cl:defmethod add-rigid-body ((self bt-dynamics-world) body (group cl:integer) (mask cl:integer))
  (btDynamicsWorld_addRigidBody (ff-pointer self) body group mask))

(cl:defmethod remove-rigid-body ((self bt-dynamics-world) body)
  (btDynamicsWorld_removeRigidBody (ff-pointer self) body))

(cl:defmethod set-constraint-solver ((self bt-dynamics-world) solver)
  (btDynamicsWorld_setConstraintSolver (ff-pointer self) solver))

(cl:defmethod get-constraint-solver ((self bt-dynamics-world))
  (btDynamicsWorld_getConstraintSolver (ff-pointer self)))

(cl:defmethod get-num-constraints ((self bt-dynamics-world))
  (btDynamicsWorld_getNumConstraints (ff-pointer self)))

(cl:defmethod get-constraint ((self bt-dynamics-world) (index cl:integer))
  (btDynamicsWorld_getConstraint (ff-pointer self) index))

(cl:defmethod get-constraint ((self bt-dynamics-world) (index cl:integer))
  (btDynamicsWorld_getConstraint (ff-pointer self) index))

(cl:defmethod get-world-type ((self bt-dynamics-world))
  (btDynamicsWorld_getWorldType (ff-pointer self)))

(cl:defmethod clear-forces ((self bt-dynamics-world))
  (btDynamicsWorld_clearForces (ff-pointer self)))

(cl:defmethod set-internal-tick-callback ((self bt-dynamics-world) cb worldUserInfo (isPreTick t))
  (btDynamicsWorld_setInternalTickCallback (ff-pointer self) cb worldUserInfo isPreTick))

(cl:defmethod set-internal-tick-callback ((self bt-dynamics-world) cb worldUserInfo)
  (btDynamicsWorld_setInternalTickCallback (ff-pointer self) cb worldUserInfo))

(cl:defmethod set-internal-tick-callback ((self bt-dynamics-world) cb)
  (btDynamicsWorld_setInternalTickCallback (ff-pointer self) cb))

(cl:defmethod set-world-user-info ((self bt-dynamics-world) worldUserInfo)
  (btDynamicsWorld_setWorldUserInfo (ff-pointer self) worldUserInfo))

(cl:defmethod get-world-user-info ((self bt-dynamics-world))
  (btDynamicsWorld_getWorldUserInfo (ff-pointer self)))

(cl:defmethod get-solver-info ((self bt-dynamics-world))
  (btDynamicsWorld_getSolverInfo (ff-pointer self)))

(cl:defmethod add-vehicle ((self bt-dynamics-world) vehicle)
  (btDynamicsWorld_addVehicle (ff-pointer self) vehicle))

(cl:defmethod remove-vehicle ((self bt-dynamics-world) vehicle)
  (btDynamicsWorld_removeVehicle (ff-pointer self) vehicle))

(cl:defmethod add-character ((self bt-dynamics-world) character)
  (btDynamicsWorld_addCharacter (ff-pointer self) character))

(cl:defmethod remove-character ((self bt-dynamics-world) character)
  (btDynamicsWorld_removeCharacter (ff-pointer self) character))


(cl:defclass bt-discrete-dynamics-world(btDynamicsWorld)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-discrete-dynamics-world) &key (dispatcher bt-dispatcher) (pairCache bt-broadphase-interface) constraintSolver (collisionConfiguration bt-collision-configuration))
  (setf (slot-value obj 'ff-pointer) (new_btDiscreteDynamicsWorld dispatcher pairCache constraintSolver collisionConfiguration)))

(cl:defmethod step-simulation ((self bt-discrete-dynamics-world) (timeStep cl:number) (maxSubSteps cl:integer) (fixedTimeStep cl:number))
  (btDiscreteDynamicsWorld_stepSimulation (ff-pointer self) timeStep maxSubSteps fixedTimeStep))

(cl:defmethod step-simulation ((self bt-discrete-dynamics-world) (timeStep cl:number) (maxSubSteps cl:integer))
  (btDiscreteDynamicsWorld_stepSimulation (ff-pointer self) timeStep maxSubSteps))

(cl:defmethod step-simulation ((self bt-discrete-dynamics-world) (timeStep cl:number))
  (btDiscreteDynamicsWorld_stepSimulation (ff-pointer self) timeStep))

(cl:defmethod synchronize-motion-states ((self bt-discrete-dynamics-world))
  (btDiscreteDynamicsWorld_synchronizeMotionStates (ff-pointer self)))

(cl:defmethod synchronize-single-motion-state ((self bt-discrete-dynamics-world) body)
  (btDiscreteDynamicsWorld_synchronizeSingleMotionState (ff-pointer self) body))

(cl:defmethod add-constraint ((self bt-discrete-dynamics-world) constraint (disableCollisionsBetweenLinkedBodies t))
  (btDiscreteDynamicsWorld_addConstraint (ff-pointer self) constraint disableCollisionsBetweenLinkedBodies))

(cl:defmethod add-constraint ((self bt-discrete-dynamics-world) constraint)
  (btDiscreteDynamicsWorld_addConstraint (ff-pointer self) constraint))

(cl:defmethod remove-constraint ((self bt-discrete-dynamics-world) constraint)
  (btDiscreteDynamicsWorld_removeConstraint (ff-pointer self) constraint))

(cl:defmethod add-action ((self bt-discrete-dynamics-world) arg1)
  (btDiscreteDynamicsWorld_addAction (ff-pointer self) arg1))

(cl:defmethod remove-action ((self bt-discrete-dynamics-world) arg1)
  (btDiscreteDynamicsWorld_removeAction (ff-pointer self) arg1))

(cl:defmethod get-simulation-island-manager ((self bt-discrete-dynamics-world))
  (btDiscreteDynamicsWorld_getSimulationIslandManager (ff-pointer self)))

(cl:defmethod get-simulation-island-manager ((self bt-discrete-dynamics-world))
  (btDiscreteDynamicsWorld_getSimulationIslandManager (ff-pointer self)))

(cl:defmethod get-collision-world ((self bt-discrete-dynamics-world))
  (btDiscreteDynamicsWorld_getCollisionWorld (ff-pointer self)))

(cl:defmethod set-gravity ((self bt-discrete-dynamics-world) (gravity bt-vector3))
  (btDiscreteDynamicsWorld_setGravity (ff-pointer self) gravity))

(cl:defmethod get-gravity ((self bt-discrete-dynamics-world))
  (btDiscreteDynamicsWorld_getGravity (ff-pointer self)))

(cl:defmethod add-collision-object ((self bt-discrete-dynamics-world) (collisionObject bt-collision-object) (collisionFilterGroup cl:integer) (collisionFilterMask cl:integer))
  (btDiscreteDynamicsWorld_addCollisionObject (ff-pointer self) collisionObject collisionFilterGroup collisionFilterMask))

(cl:defmethod add-collision-object ((self bt-discrete-dynamics-world) (collisionObject bt-collision-object) (collisionFilterGroup cl:integer))
  (btDiscreteDynamicsWorld_addCollisionObject (ff-pointer self) collisionObject collisionFilterGroup))

(cl:defmethod add-collision-object ((self bt-discrete-dynamics-world) (collisionObject bt-collision-object))
  (btDiscreteDynamicsWorld_addCollisionObject (ff-pointer self) collisionObject))

(cl:defmethod add-rigid-body ((self bt-discrete-dynamics-world) body)
  (btDiscreteDynamicsWorld_addRigidBody (ff-pointer self) body))

(cl:defmethod add-rigid-body ((self bt-discrete-dynamics-world) body (group cl:integer) (mask cl:integer))
  (btDiscreteDynamicsWorld_addRigidBody (ff-pointer self) body group mask))

(cl:defmethod remove-rigid-body ((self bt-discrete-dynamics-world) body)
  (btDiscreteDynamicsWorld_removeRigidBody (ff-pointer self) body))

(cl:defmethod remove-collision-object ((self bt-discrete-dynamics-world) (collisionObject bt-collision-object))
  (btDiscreteDynamicsWorld_removeCollisionObject (ff-pointer self) collisionObject))

(cl:defmethod debug-draw-constraint ((self bt-discrete-dynamics-world) constraint)
  (btDiscreteDynamicsWorld_debugDrawConstraint (ff-pointer self) constraint))

(cl:defmethod debug-draw-world ((self bt-discrete-dynamics-world))
  (btDiscreteDynamicsWorld_debugDrawWorld (ff-pointer self)))

(cl:defmethod set-constraint-solver ((self bt-discrete-dynamics-world) solver)
  (btDiscreteDynamicsWorld_setConstraintSolver (ff-pointer self) solver))

(cl:defmethod get-constraint-solver ((self bt-discrete-dynamics-world))
  (btDiscreteDynamicsWorld_getConstraintSolver (ff-pointer self)))

(cl:defmethod get-num-constraints ((self bt-discrete-dynamics-world))
  (btDiscreteDynamicsWorld_getNumConstraints (ff-pointer self)))

(cl:defmethod get-constraint ((self bt-discrete-dynamics-world) (index cl:integer))
  (btDiscreteDynamicsWorld_getConstraint (ff-pointer self) index))

(cl:defmethod get-constraint ((self bt-discrete-dynamics-world) (index cl:integer))
  (btDiscreteDynamicsWorld_getConstraint (ff-pointer self) index))

(cl:defmethod get-world-type ((self bt-discrete-dynamics-world))
  (btDiscreteDynamicsWorld_getWorldType (ff-pointer self)))

(cl:defmethod clear-forces ((self bt-discrete-dynamics-world))
  (btDiscreteDynamicsWorld_clearForces (ff-pointer self)))

(cl:defmethod apply-gravity ((self bt-discrete-dynamics-world))
  (btDiscreteDynamicsWorld_applyGravity (ff-pointer self)))

(cl:defmethod set-num-tasks ((self bt-discrete-dynamics-world) (numTasks cl:integer))
  (btDiscreteDynamicsWorld_setNumTasks (ff-pointer self) numTasks))

(cl:defmethod update-vehicles ((self bt-discrete-dynamics-world) (timeStep cl:number))
  (btDiscreteDynamicsWorld_updateVehicles (ff-pointer self) timeStep))

(cl:defmethod add-vehicle ((self bt-discrete-dynamics-world) vehicle)
  (btDiscreteDynamicsWorld_addVehicle (ff-pointer self) vehicle))

(cl:defmethod remove-vehicle ((self bt-discrete-dynamics-world) vehicle)
  (btDiscreteDynamicsWorld_removeVehicle (ff-pointer self) vehicle))

(cl:defmethod add-character ((self bt-discrete-dynamics-world) character)
  (btDiscreteDynamicsWorld_addCharacter (ff-pointer self) character))

(cl:defmethod remove-character ((self bt-discrete-dynamics-world) character)
  (btDiscreteDynamicsWorld_removeCharacter (ff-pointer self) character))

(cl:defmethod set-synchronize-all-motion-states ((self bt-discrete-dynamics-world) (synchronizeAll t))
  (btDiscreteDynamicsWorld_setSynchronizeAllMotionStates (ff-pointer self) synchronizeAll))

(cl:defmethod get-synchronize-all-motion-states ((self bt-discrete-dynamics-world))
  (btDiscreteDynamicsWorld_getSynchronizeAllMotionStates (ff-pointer self)))

(cl:defmethod serialize ((self bt-discrete-dynamics-world) (serializer bt-serializer))
  (btDiscreteDynamicsWorld_serialize (ff-pointer self) serializer))


(cl:defclass bt-simple-dynamics-world(btDynamicsWorld)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-simple-dynamics-world) &key (dispatcher bt-dispatcher) (pairCache bt-broadphase-interface) constraintSolver (collisionConfiguration bt-collision-configuration))
  (setf (slot-value obj 'ff-pointer) (new_btSimpleDynamicsWorld dispatcher pairCache constraintSolver collisionConfiguration)))

(cl:defmethod step-simulation ((self bt-simple-dynamics-world) (timeStep cl:number) (maxSubSteps cl:integer) (fixedTimeStep cl:number))
  (btSimpleDynamicsWorld_stepSimulation (ff-pointer self) timeStep maxSubSteps fixedTimeStep))

(cl:defmethod step-simulation ((self bt-simple-dynamics-world) (timeStep cl:number) (maxSubSteps cl:integer))
  (btSimpleDynamicsWorld_stepSimulation (ff-pointer self) timeStep maxSubSteps))

(cl:defmethod step-simulation ((self bt-simple-dynamics-world) (timeStep cl:number))
  (btSimpleDynamicsWorld_stepSimulation (ff-pointer self) timeStep))

(cl:defmethod set-gravity ((self bt-simple-dynamics-world) (gravity bt-vector3))
  (btSimpleDynamicsWorld_setGravity (ff-pointer self) gravity))

(cl:defmethod get-gravity ((self bt-simple-dynamics-world))
  (btSimpleDynamicsWorld_getGravity (ff-pointer self)))

(cl:defmethod add-rigid-body ((self bt-simple-dynamics-world) body)
  (btSimpleDynamicsWorld_addRigidBody (ff-pointer self) body))

(cl:defmethod add-rigid-body ((self bt-simple-dynamics-world) body (group cl:integer) (mask cl:integer))
  (btSimpleDynamicsWorld_addRigidBody (ff-pointer self) body group mask))

(cl:defmethod remove-rigid-body ((self bt-simple-dynamics-world) body)
  (btSimpleDynamicsWorld_removeRigidBody (ff-pointer self) body))

(cl:defmethod debug-draw-world ((self bt-simple-dynamics-world))
  (btSimpleDynamicsWorld_debugDrawWorld (ff-pointer self)))

(cl:defmethod add-action ((self bt-simple-dynamics-world) action)
  (btSimpleDynamicsWorld_addAction (ff-pointer self) action))

(cl:defmethod remove-action ((self bt-simple-dynamics-world) action)
  (btSimpleDynamicsWorld_removeAction (ff-pointer self) action))

(cl:defmethod remove-collision-object ((self bt-simple-dynamics-world) (collisionObject bt-collision-object))
  (btSimpleDynamicsWorld_removeCollisionObject (ff-pointer self) collisionObject))

(cl:defmethod update-aabbs ((self bt-simple-dynamics-world))
  (btSimpleDynamicsWorld_updateAabbs (ff-pointer self)))

(cl:defmethod synchronize-motion-states ((self bt-simple-dynamics-world))
  (btSimpleDynamicsWorld_synchronizeMotionStates (ff-pointer self)))

(cl:defmethod set-constraint-solver ((self bt-simple-dynamics-world) solver)
  (btSimpleDynamicsWorld_setConstraintSolver (ff-pointer self) solver))

(cl:defmethod get-constraint-solver ((self bt-simple-dynamics-world))
  (btSimpleDynamicsWorld_getConstraintSolver (ff-pointer self)))

(cl:defmethod get-world-type ((self bt-simple-dynamics-world))
  (btSimpleDynamicsWorld_getWorldType (ff-pointer self)))

(cl:defmethod clear-forces ((self bt-simple-dynamics-world))
  (btSimpleDynamicsWorld_clearForces (ff-pointer self)))


(cl:defclass bt-rigid-body(btCollisionObject)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-rigid-body) &key constructionInfo)
  (setf (slot-value obj 'ff-pointer) (new_btRigidBody constructionInfo)))

(cl:defmethod initialize-instance :after ((obj bt-rigid-body) &key (mass cl:number) (motionState bt-motion-state) (collisionShape bt-collision-shape) (localInertia bt-vector3))
  (setf (slot-value obj 'ff-pointer) (new_btRigidBody mass motionState collisionShape localInertia)))

(cl:defmethod initialize-instance :after ((obj bt-rigid-body) &key (mass cl:number) (motionState bt-motion-state) (collisionShape bt-collision-shape))
  (setf (slot-value obj 'ff-pointer) (new_btRigidBody mass motionState collisionShape)))

(cl:defmethod proceed-to-transform ((self bt-rigid-body) (newTrans bt-transform))
  (btRigidBody_proceedToTransform (ff-pointer self) newTrans))

(cl:defmethod predict-integrated-transform ((self bt-rigid-body) (step cl:number) (predictedTransform bt-transform))
  (btRigidBody_predictIntegratedTransform (ff-pointer self) step predictedTransform))

(cl:defmethod save-kinematic-state ((self bt-rigid-body) (step cl:number))
  (btRigidBody_saveKinematicState (ff-pointer self) step))

(cl:defmethod apply-gravity ((self bt-rigid-body))
  (btRigidBody_applyGravity (ff-pointer self)))

(cl:defmethod set-gravity ((self bt-rigid-body) (acceleration bt-vector3))
  (btRigidBody_setGravity (ff-pointer self) acceleration))

(cl:defmethod get-gravity ((self bt-rigid-body))
  (btRigidBody_getGravity (ff-pointer self)))

(cl:defmethod set-damping ((self bt-rigid-body) (lin_damping cl:number) (ang_damping cl:number))
  (btRigidBody_setDamping (ff-pointer self) lin_damping ang_damping))

(cl:defmethod get-linear-damping ((self bt-rigid-body))
  (btRigidBody_getLinearDamping (ff-pointer self)))

(cl:defmethod get-angular-damping ((self bt-rigid-body))
  (btRigidBody_getAngularDamping (ff-pointer self)))

(cl:defmethod get-linear-sleeping-threshold ((self bt-rigid-body))
  (btRigidBody_getLinearSleepingThreshold (ff-pointer self)))

(cl:defmethod get-angular-sleeping-threshold ((self bt-rigid-body))
  (btRigidBody_getAngularSleepingThreshold (ff-pointer self)))

(cl:defmethod apply-damping ((self bt-rigid-body) (timeStep cl:number))
  (btRigidBody_applyDamping (ff-pointer self) timeStep))

(cl:defmethod get-collision-shape ((self bt-rigid-body))
  (btRigidBody_getCollisionShape (ff-pointer self)))

(cl:defmethod get-collision-shape ((self bt-rigid-body))
  (btRigidBody_getCollisionShape (ff-pointer self)))

(cl:defmethod set-mass-props ((self bt-rigid-body) (mass cl:number) (inertia bt-vector3))
  (btRigidBody_setMassProps (ff-pointer self) mass inertia))

(cl:defmethod get-linear-factor ((self bt-rigid-body))
  (btRigidBody_getLinearFactor (ff-pointer self)))

(cl:defmethod set-linear-factor ((self bt-rigid-body) (linearFactor bt-vector3))
  (btRigidBody_setLinearFactor (ff-pointer self) linearFactor))

(cl:defmethod get-inv-mass ((self bt-rigid-body))
  (btRigidBody_getInvMass (ff-pointer self)))

(cl:defmethod get-inv-inertia-tensor-world ((self bt-rigid-body))
  (btRigidBody_getInvInertiaTensorWorld (ff-pointer self)))

(cl:defmethod integrate-velocities ((self bt-rigid-body) (step cl:number))
  (btRigidBody_integrateVelocities (ff-pointer self) step))

(cl:defmethod set-center-of-mass-transform ((self bt-rigid-body) (xform bt-transform))
  (btRigidBody_setCenterOfMassTransform (ff-pointer self) xform))

(cl:defmethod apply-central-force ((self bt-rigid-body) (force bt-vector3))
  (btRigidBody_applyCentralForce (ff-pointer self) force))

(cl:defmethod get-total-force ((self bt-rigid-body))
  (btRigidBody_getTotalForce (ff-pointer self)))

(cl:defmethod get-total-torque ((self bt-rigid-body))
  (btRigidBody_getTotalTorque (ff-pointer self)))

(cl:defmethod get-inv-inertia-diag-local ((self bt-rigid-body))
  (btRigidBody_getInvInertiaDiagLocal (ff-pointer self)))

(cl:defmethod set-inv-inertia-diag-local ((self bt-rigid-body) (diagInvInertia bt-vector3))
  (btRigidBody_setInvInertiaDiagLocal (ff-pointer self) diagInvInertia))

(cl:defmethod set-sleeping-thresholds ((self bt-rigid-body) (linear cl:number) (angular cl:number))
  (btRigidBody_setSleepingThresholds (ff-pointer self) linear angular))

(cl:defmethod apply-torque ((self bt-rigid-body) (torque bt-vector3))
  (btRigidBody_applyTorque (ff-pointer self) torque))

(cl:defmethod apply-force ((self bt-rigid-body) (force bt-vector3) (rel_pos bt-vector3))
  (btRigidBody_applyForce (ff-pointer self) force rel_pos))

(cl:defmethod apply-central-impulse ((self bt-rigid-body) (impulse bt-vector3))
  (btRigidBody_applyCentralImpulse (ff-pointer self) impulse))

(cl:defmethod apply-torque-impulse ((self bt-rigid-body) (torque bt-vector3))
  (btRigidBody_applyTorqueImpulse (ff-pointer self) torque))

(cl:defmethod apply-impulse ((self bt-rigid-body) (impulse bt-vector3) (rel_pos bt-vector3))
  (btRigidBody_applyImpulse (ff-pointer self) impulse rel_pos))

(cl:defmethod clear-forces ((self bt-rigid-body))
  (btRigidBody_clearForces (ff-pointer self)))

(cl:defmethod update-inertia-tensor ((self bt-rigid-body))
  (btRigidBody_updateInertiaTensor (ff-pointer self)))

(cl:defmethod get-center-of-mass-position ((self bt-rigid-body))
  (btRigidBody_getCenterOfMassPosition (ff-pointer self)))

(cl:defmethod get-orientation ((self bt-rigid-body))
  (btRigidBody_getOrientation (ff-pointer self)))

(cl:defmethod get-center-of-mass-transform ((self bt-rigid-body))
  (btRigidBody_getCenterOfMassTransform (ff-pointer self)))

(cl:defmethod get-linear-velocity ((self bt-rigid-body))
  (btRigidBody_getLinearVelocity (ff-pointer self)))

(cl:defmethod get-angular-velocity ((self bt-rigid-body))
  (btRigidBody_getAngularVelocity (ff-pointer self)))

(cl:defmethod set-linear-velocity ((self bt-rigid-body) (lin_vel bt-vector3))
  (btRigidBody_setLinearVelocity (ff-pointer self) lin_vel))

(cl:defmethod set-angular-velocity ((self bt-rigid-body) (ang_vel bt-vector3))
  (btRigidBody_setAngularVelocity (ff-pointer self) ang_vel))

(cl:defmethod get-velocity-in-local-point ((self bt-rigid-body) (rel_pos bt-vector3))
  (btRigidBody_getVelocityInLocalPoint (ff-pointer self) rel_pos))

(cl:defmethod translate ((self bt-rigid-body) (v bt-vector3))
  (btRigidBody_translate (ff-pointer self) v))

(cl:defmethod get-aabb ((self bt-rigid-body) (aabbMin bt-vector3) (aabbMax bt-vector3))
  (btRigidBody_getAabb (ff-pointer self) aabbMin aabbMax))

(cl:defmethod compute-impulse-denominator ((self bt-rigid-body) (pos bt-vector3) (normal bt-vector3))
  (btRigidBody_computeImpulseDenominator (ff-pointer self) pos normal))

(cl:defmethod compute-angular-impulse-denominator ((self bt-rigid-body) (axis bt-vector3))
  (btRigidBody_computeAngularImpulseDenominator (ff-pointer self) axis))

(cl:defmethod update-deactivation ((self bt-rigid-body) (timeStep cl:number))
  (btRigidBody_updateDeactivation (ff-pointer self) timeStep))

(cl:defmethod wants-sleeping ((self bt-rigid-body))
  (btRigidBody_wantsSleeping (ff-pointer self)))

(cl:defmethod get-broadphase-proxy ((self bt-rigid-body))
  (btRigidBody_getBroadphaseProxy (ff-pointer self)))

(cl:defmethod get-broadphase-proxy ((self bt-rigid-body))
  (btRigidBody_getBroadphaseProxy (ff-pointer self)))

(cl:defmethod set-new-broadphase-proxy ((self bt-rigid-body) (broadphaseProxy bt-broadphase-proxy))
  (btRigidBody_setNewBroadphaseProxy (ff-pointer self) broadphaseProxy))

(cl:defmethod get-motion-state ((self bt-rigid-body))
  (btRigidBody_getMotionState (ff-pointer self)))

(cl:defmethod get-motion-state ((self bt-rigid-body))
  (btRigidBody_getMotionState (ff-pointer self)))

(cl:defmethod set-motion-state ((self bt-rigid-body) (motionState bt-motion-state))
  (btRigidBody_setMotionState (ff-pointer self) motionState))

(cl:defmethod (cl:setf m_contactSolverType) (arg0 (obj bt-rigid-body))
  (btRigidBody_m_contactSolverType_set (ff-pointer obj) arg0))

(cl:defmethod m_contactSolverType ((obj bt-rigid-body))
  (btRigidBody_m_contactSolverType_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_frictionSolverType) (arg0 (obj bt-rigid-body))
  (btRigidBody_m_frictionSolverType_set (ff-pointer obj) arg0))

(cl:defmethod m_frictionSolverType ((obj bt-rigid-body))
  (btRigidBody_m_frictionSolverType_get (ff-pointer obj)))

(cl:defmethod set-angular-factor ((self bt-rigid-body) (angFac bt-vector3))
  (btRigidBody_setAngularFactor (ff-pointer self) angFac))

(cl:defmethod set-angular-factor ((self bt-rigid-body) (angFac cl:number))
  (btRigidBody_setAngularFactor (ff-pointer self) angFac))

(cl:defmethod get-angular-factor ((self bt-rigid-body))
  (btRigidBody_getAngularFactor (ff-pointer self)))

(cl:defmethod is-in-world ((self bt-rigid-body))
  (btRigidBody_isInWorld (ff-pointer self)))

(cl:defmethod check-collide-with-override ((self bt-rigid-body) (co bt-collision-object))
  (btRigidBody_checkCollideWithOverride (ff-pointer self) co))

(cl:defmethod add-constraint-ref ((self bt-rigid-body) c)
  (btRigidBody_addConstraintRef (ff-pointer self) c))

(cl:defmethod remove-constraint-ref ((self bt-rigid-body) c)
  (btRigidBody_removeConstraintRef (ff-pointer self) c))

(cl:defmethod get-constraint-ref ((self bt-rigid-body) (index cl:integer))
  (btRigidBody_getConstraintRef (ff-pointer self) index))

(cl:defmethod get-num-constraint-refs ((self bt-rigid-body))
  (btRigidBody_getNumConstraintRefs (ff-pointer self)))

(cl:defmethod set-flags ((self bt-rigid-body) (flags cl:integer))
  (btRigidBody_setFlags (ff-pointer self) flags))

(cl:defmethod get-flags ((self bt-rigid-body))
  (btRigidBody_getFlags (ff-pointer self)))

(cl:defmethod get-delta-linear-velocity ((self bt-rigid-body))
  (btRigidBody_getDeltaLinearVelocity (ff-pointer self)))

(cl:defmethod get-delta-angular-velocity ((self bt-rigid-body))
  (btRigidBody_getDeltaAngularVelocity (ff-pointer self)))

(cl:defmethod get-push-velocity ((self bt-rigid-body))
  (btRigidBody_getPushVelocity (ff-pointer self)))

(cl:defmethod get-turn-velocity ((self bt-rigid-body))
  (btRigidBody_getTurnVelocity (ff-pointer self)))

(cl:defmethod internal-get-delta-linear-velocity ((self bt-rigid-body))
  (btRigidBody_internalGetDeltaLinearVelocity (ff-pointer self)))

(cl:defmethod internal-get-delta-angular-velocity ((self bt-rigid-body))
  (btRigidBody_internalGetDeltaAngularVelocity (ff-pointer self)))

(cl:defmethod internal-get-angular-factor ((self bt-rigid-body))
  (btRigidBody_internalGetAngularFactor (ff-pointer self)))

(cl:defmethod internal-get-inv-mass ((self bt-rigid-body))
  (btRigidBody_internalGetInvMass (ff-pointer self)))

(cl:defmethod internal-get-push-velocity ((self bt-rigid-body))
  (btRigidBody_internalGetPushVelocity (ff-pointer self)))

(cl:defmethod internal-get-turn-velocity ((self bt-rigid-body))
  (btRigidBody_internalGetTurnVelocity (ff-pointer self)))

(cl:defmethod internal-get-velocity-in-local-point-obsolete ((self bt-rigid-body) (rel_pos bt-vector3) (velocity bt-vector3))
  (btRigidBody_internalGetVelocityInLocalPointObsolete (ff-pointer self) rel_pos velocity))

(cl:defmethod internal-get-angular-velocity ((self bt-rigid-body) (angVel bt-vector3))
  (btRigidBody_internalGetAngularVelocity (ff-pointer self) angVel))

(cl:defmethod internal-apply-impulse ((self bt-rigid-body) (linearComponent bt-vector3) (angularComponent bt-vector3) (impulseMagnitude cl:number))
  (btRigidBody_internalApplyImpulse (ff-pointer self) linearComponent angularComponent impulseMagnitude))

(cl:defmethod internal-apply-push-impulse ((self bt-rigid-body) (linearComponent bt-vector3) (angularComponent bt-vector3) (impulseMagnitude cl:number))
  (btRigidBody_internalApplyPushImpulse (ff-pointer self) linearComponent angularComponent impulseMagnitude))

(cl:defmethod internal-writeback-velocity ((self bt-rigid-body))
  (btRigidBody_internalWritebackVelocity (ff-pointer self)))

(cl:defmethod internal-writeback-velocity ((self bt-rigid-body) (timeStep cl:number))
  (btRigidBody_internalWritebackVelocity (ff-pointer self) timeStep))

(cl:defmethod calculate-serialize-buffer-size ((self bt-rigid-body))
  (btRigidBody_calculateSerializeBufferSize (ff-pointer self)))

(cl:defmethod serialize ((self bt-rigid-body) dataBuffer (serializer bt-serializer))
  (btRigidBody_serialize (ff-pointer self) dataBuffer serializer))

(cl:defmethod serialize-single-object ((self bt-rigid-body) (serializer bt-serializer))
  (btRigidBody_serializeSingleObject (ff-pointer self) serializer))


(cl:defclass bt-rigid-body-float-data()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-rigid-body-float-data) &key)
  (setf (slot-value obj 'ff-pointer) (new_btRigidBodyFloatData)))


(cl:defclass bt-rigid-body-double-data()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-rigid-body-double-data) &key)
  (setf (slot-value obj 'ff-pointer) (new_btRigidBodyDoubleData)))


(cl:defclass bt-jacobian-entry()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-jacobian-entry) &key)
  (setf (slot-value obj 'ff-pointer) (new_btJacobianEntry)))

(cl:defmethod initialize-instance :after ((obj bt-jacobian-entry) &key (world2A bt-matrix3x3) (world2B bt-matrix3x3) (rel_pos1 bt-vector3) (rel_pos2 bt-vector3) (jointAxis bt-vector3) (inertiaInvA bt-vector3) (massInvA cl:number) (inertiaInvB bt-vector3) (massInvB cl:number))
  (setf (slot-value obj 'ff-pointer) (new_btJacobianEntry world2A world2B rel_pos1 rel_pos2 jointAxis inertiaInvA massInvA inertiaInvB massInvB)))

(cl:defmethod initialize-instance :after ((obj bt-jacobian-entry) &key (jointAxis bt-vector3) (world2A bt-matrix3x3) (world2B bt-matrix3x3) (inertiaInvA bt-vector3) (inertiaInvB bt-vector3))
  (setf (slot-value obj 'ff-pointer) (new_btJacobianEntry jointAxis world2A world2B inertiaInvA inertiaInvB)))

(cl:defmethod initialize-instance :after ((obj bt-jacobian-entry) &key (axisInA bt-vector3) (axisInB bt-vector3) (inertiaInvA bt-vector3) (inertiaInvB bt-vector3))
  (setf (slot-value obj 'ff-pointer) (new_btJacobianEntry axisInA axisInB inertiaInvA inertiaInvB)))

(cl:defmethod initialize-instance :after ((obj bt-jacobian-entry) &key (world2A bt-matrix3x3) (rel_pos1 bt-vector3) (rel_pos2 bt-vector3) (jointAxis bt-vector3) (inertiaInvA bt-vector3) (massInvA cl:number))
  (setf (slot-value obj 'ff-pointer) (new_btJacobianEntry world2A rel_pos1 rel_pos2 jointAxis inertiaInvA massInvA)))

(cl:defmethod get-diagonal ((self bt-jacobian-entry))
  (btJacobianEntry_getDiagonal (ff-pointer self)))

(cl:defmethod get-non-diagonal ((self bt-jacobian-entry) (jacB bt-jacobian-entry) (massInvA cl:number))
  (btJacobianEntry_getNonDiagonal (ff-pointer self) (ff-pointer jacB) massInvA))

(cl:defmethod get-non-diagonal ((self bt-jacobian-entry) (jacB bt-jacobian-entry) (massInvA cl:number) (massInvB cl:number))
  (btJacobianEntry_getNonDiagonal (ff-pointer self) (ff-pointer jacB) massInvA massInvB))

(cl:defmethod get-relative-velocity ((self bt-jacobian-entry) (linvelA bt-vector3) (angvelA bt-vector3) (linvelB bt-vector3) (angvelB bt-vector3))
  (btJacobianEntry_getRelativeVelocity (ff-pointer self) linvelA angvelA linvelB angvelB))

(cl:defmethod (cl:setf m_linearJointAxis) (arg0 (obj bt-jacobian-entry))
  (btJacobianEntry_m_linearJointAxis_set (ff-pointer obj) arg0))

(cl:defmethod m_linearJointAxis ((obj bt-jacobian-entry))
  (btJacobianEntry_m_linearJointAxis_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_aJ) (arg0 (obj bt-jacobian-entry))
  (btJacobianEntry_m_aJ_set (ff-pointer obj) arg0))

(cl:defmethod m_aJ ((obj bt-jacobian-entry))
  (btJacobianEntry_m_aJ_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_bJ) (arg0 (obj bt-jacobian-entry))
  (btJacobianEntry_m_bJ_set (ff-pointer obj) arg0))

(cl:defmethod m_bJ ((obj bt-jacobian-entry))
  (btJacobianEntry_m_bJ_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_0MinvJt) (arg0 (obj bt-jacobian-entry))
  (btJacobianEntry_m_0MinvJt_set (ff-pointer obj) arg0))

(cl:defmethod m_0MinvJt ((obj bt-jacobian-entry))
  (btJacobianEntry_m_0MinvJt_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_1MinvJt) (arg0 (obj bt-jacobian-entry))
  (btJacobianEntry_m_1MinvJt_set (ff-pointer obj) arg0))

(cl:defmethod m_1MinvJt ((obj bt-jacobian-entry))
  (btJacobianEntry_m_1MinvJt_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_Adiag) (arg0 (obj bt-jacobian-entry))
  (btJacobianEntry_m_Adiag_set (ff-pointer obj) arg0))

(cl:defmethod m_Adiag ((obj bt-jacobian-entry))
  (btJacobianEntry_m_Adiag_get (ff-pointer obj)))


(cl:defclass bt-solver-body-obsolete()
  ((ff-pointer :reader ff-pointer)))


(cl:defclass bt-solver-constraint()
  ((ff-pointer :reader ff-pointer)))


(cl:defclass bt-typed-constraint(btTypedObject)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod build-jacobian ((self bt-typed-constraint))
  (btTypedConstraint_buildJacobian (ff-pointer self)))

(cl:defmethod setup-solver-constraint ((self bt-typed-constraint) ca (solverBodyA cl:integer) (solverBodyB cl:integer) (timeStep cl:number))
  (btTypedConstraint_setupSolverConstraint (ff-pointer self) ca solverBodyA solverBodyB timeStep))

(cl:defmethod get-info1 ((self bt-typed-constraint) info)
  (btTypedConstraint_getInfo1 (ff-pointer self) info))

(cl:defmethod get-info2 ((self bt-typed-constraint) info)
  (btTypedConstraint_getInfo2 (ff-pointer self) info))

(cl:defmethod internal-set-applied-impulse ((self bt-typed-constraint) (appliedImpulse cl:number))
  (btTypedConstraint_internalSetAppliedImpulse (ff-pointer self) appliedImpulse))

(cl:defmethod internal-get-applied-impulse ((self bt-typed-constraint))
  (btTypedConstraint_internalGetAppliedImpulse (ff-pointer self)))

(cl:defmethod get-breaking-impulse-threshold ((self bt-typed-constraint))
  (btTypedConstraint_getBreakingImpulseThreshold (ff-pointer self)))

(cl:defmethod set-breaking-impulse-threshold ((self bt-typed-constraint) (threshold cl:number))
  (btTypedConstraint_setBreakingImpulseThreshold (ff-pointer self) threshold))

(cl:defmethod is-enabled ((self bt-typed-constraint))
  (btTypedConstraint_isEnabled (ff-pointer self)))

(cl:defmethod set-enabled ((self bt-typed-constraint) (enabled t))
  (btTypedConstraint_setEnabled (ff-pointer self) enabled))

(cl:defmethod solve-constraint-obsolete ((self bt-typed-constraint) (arg1 bt-rigid-body) (arg2 bt-rigid-body) (arg3 cl:number))
  (btTypedConstraint_solveConstraintObsolete (ff-pointer self) arg1 arg2 arg3))

(cl:defmethod get-rigid-body-a ((self bt-typed-constraint))
  (btTypedConstraint_getRigidBodyA (ff-pointer self)))

(cl:defmethod get-rigid-body-b ((self bt-typed-constraint))
  (btTypedConstraint_getRigidBodyB (ff-pointer self)))

(cl:defmethod get-rigid-body-a ((self bt-typed-constraint))
  (btTypedConstraint_getRigidBodyA (ff-pointer self)))

(cl:defmethod get-rigid-body-b ((self bt-typed-constraint))
  (btTypedConstraint_getRigidBodyB (ff-pointer self)))

(cl:defmethod get-user-constraint-type ((self bt-typed-constraint))
  (btTypedConstraint_getUserConstraintType (ff-pointer self)))

(cl:defmethod set-user-constraint-type ((self bt-typed-constraint) (userConstraintType cl:integer))
  (btTypedConstraint_setUserConstraintType (ff-pointer self) userConstraintType))

(cl:defmethod set-user-constraint-id ((self bt-typed-constraint) (uid cl:integer))
  (btTypedConstraint_setUserConstraintId (ff-pointer self) uid))

(cl:defmethod get-user-constraint-id ((self bt-typed-constraint))
  (btTypedConstraint_getUserConstraintId (ff-pointer self)))

(cl:defmethod set-user-constraint-ptr ((self bt-typed-constraint) ptr)
  (btTypedConstraint_setUserConstraintPtr (ff-pointer self) ptr))

(cl:defmethod get-user-constraint-ptr ((self bt-typed-constraint))
  (btTypedConstraint_getUserConstraintPtr (ff-pointer self)))

(cl:defmethod get-uid ((self bt-typed-constraint))
  (btTypedConstraint_getUid (ff-pointer self)))

(cl:defmethod needs-feedback ((self bt-typed-constraint))
  (btTypedConstraint_needsFeedback (ff-pointer self)))

(cl:defmethod enable-feedback ((self bt-typed-constraint) (needsFeedback t))
  (btTypedConstraint_enableFeedback (ff-pointer self) needsFeedback))

(cl:defmethod get-applied-impulse ((self bt-typed-constraint))
  (btTypedConstraint_getAppliedImpulse (ff-pointer self)))

(cl:defmethod get-constraint-type ((self bt-typed-constraint))
  (btTypedConstraint_getConstraintType (ff-pointer self)))

(cl:defmethod set-dbg-draw-size ((self bt-typed-constraint) (dbgDrawSize cl:number))
  (btTypedConstraint_setDbgDrawSize (ff-pointer self) dbgDrawSize))

(cl:defmethod get-dbg-draw-size ((self bt-typed-constraint))
  (btTypedConstraint_getDbgDrawSize (ff-pointer self)))

(cl:defmethod set-param ((self bt-typed-constraint) (num cl:integer) (value cl:number) (axis cl:integer))
  (btTypedConstraint_setParam (ff-pointer self) num value axis))

(cl:defmethod set-param ((self bt-typed-constraint) (num cl:integer) (value cl:number))
  (btTypedConstraint_setParam (ff-pointer self) num value))

(cl:defmethod get-param ((self bt-typed-constraint) (num cl:integer) (axis cl:integer))
  (btTypedConstraint_getParam (ff-pointer self) num axis))

(cl:defmethod get-param ((self bt-typed-constraint) (num cl:integer))
  (btTypedConstraint_getParam (ff-pointer self) num))

(cl:defmethod calculate-serialize-buffer-size ((self bt-typed-constraint))
  (btTypedConstraint_calculateSerializeBufferSize (ff-pointer self)))

(cl:defmethod serialize ((self bt-typed-constraint) dataBuffer (serializer bt-serializer))
  (btTypedConstraint_serialize (ff-pointer self) dataBuffer serializer))


(cl:defclass bt-typed-constraint-data()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-typed-constraint-data) &key)
  (setf (slot-value obj 'ff-pointer) (new_btTypedConstraintData)))


(cl:defclass bt-angular-limit()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-angular-limit) &key)
  (setf (slot-value obj 'ff-pointer) (new_btAngularLimit)))

(cl:defmethod set ((self bt-angular-limit) (low cl:number) (high cl:number) (_softness cl:number) (_biasFactor cl:number) (_relaxationFactor cl:number))
  (btAngularLimit_set (ff-pointer self) low high _softness _biasFactor _relaxationFactor))

(cl:defmethod set ((self bt-angular-limit) (low cl:number) (high cl:number) (_softness cl:number) (_biasFactor cl:number))
  (btAngularLimit_set (ff-pointer self) low high _softness _biasFactor))

(cl:defmethod set ((self bt-angular-limit) (low cl:number) (high cl:number) (_softness cl:number))
  (btAngularLimit_set (ff-pointer self) low high _softness))

(cl:defmethod set ((self bt-angular-limit) (low cl:number) (high cl:number))
  (btAngularLimit_set (ff-pointer self) low high))

(cl:defmethod test ((self bt-angular-limit) (angle cl:number))
  (btAngularLimit_test (ff-pointer self) angle))

(cl:defmethod get-softness ((self bt-angular-limit))
  (btAngularLimit_getSoftness (ff-pointer self)))

(cl:defmethod get-bias-factor ((self bt-angular-limit))
  (btAngularLimit_getBiasFactor (ff-pointer self)))

(cl:defmethod get-relaxation-factor ((self bt-angular-limit))
  (btAngularLimit_getRelaxationFactor (ff-pointer self)))

(cl:defmethod get-correction ((self bt-angular-limit))
  (btAngularLimit_getCorrection (ff-pointer self)))

(cl:defmethod get-sign ((self bt-angular-limit))
  (btAngularLimit_getSign (ff-pointer self)))

(cl:defmethod get-half-range ((self bt-angular-limit))
  (btAngularLimit_getHalfRange (ff-pointer self)))

(cl:defmethod is-limit ((self bt-angular-limit))
  (btAngularLimit_isLimit (ff-pointer self)))

(cl:defmethod fit ((self bt-angular-limit) angle)
  (btAngularLimit_fit (ff-pointer self) angle))

(cl:defmethod get-error ((self bt-angular-limit))
  (btAngularLimit_getError (ff-pointer self)))

(cl:defmethod get-low ((self bt-angular-limit))
  (btAngularLimit_getLow (ff-pointer self)))

(cl:defmethod get-high ((self bt-angular-limit))
  (btAngularLimit_getHigh (ff-pointer self)))


(cl:defclass bt-constraint-setting()
  ((ff-pointer :reader ff-pointer)))


(cl:defclass bt-point2-point-constraint(btTypedConstraint)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod (cl:setf m_useSolveConstraintObsolete) (arg0 (obj bt-point2-point-constraint))
  (btPoint2PointConstraint_m_useSolveConstraintObsolete_set (ff-pointer obj) arg0))

(cl:defmethod m_useSolveConstraintObsolete ((obj bt-point2-point-constraint))
  (btPoint2PointConstraint_m_useSolveConstraintObsolete_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_setting) (arg0 (obj bt-point2-point-constraint))
  (btPoint2PointConstraint_m_setting_set (ff-pointer obj) arg0))

(cl:defmethod m_setting ((obj bt-point2-point-constraint))
  (btPoint2PointConstraint_m_setting_get (ff-pointer obj)))

(cl:defmethod initialize-instance :after ((obj bt-point2-point-constraint) &key (rbA bt-rigid-body) (rbB bt-rigid-body) (pivotInA bt-vector3) (pivotInB bt-vector3))
  (setf (slot-value obj 'ff-pointer) (new_btPoint2PointConstraint rbA rbB pivotInA pivotInB)))

(cl:defmethod initialize-instance :after ((obj bt-point2-point-constraint) &key (rbA bt-rigid-body) (pivotInA bt-vector3))
  (setf (slot-value obj 'ff-pointer) (new_btPoint2PointConstraint rbA pivotInA)))

(cl:defmethod build-jacobian ((self bt-point2-point-constraint))
  (btPoint2PointConstraint_buildJacobian (ff-pointer self)))

(cl:defmethod get-info1 ((self bt-point2-point-constraint) info)
  (btPoint2PointConstraint_getInfo1 (ff-pointer self) info))

(cl:defmethod get-info1-non-virtual ((self bt-point2-point-constraint) info)
  (btPoint2PointConstraint_getInfo1NonVirtual (ff-pointer self) info))

(cl:defmethod get-info2 ((self bt-point2-point-constraint) info)
  (btPoint2PointConstraint_getInfo2 (ff-pointer self) info))

(cl:defmethod get-info2-non-virtual ((self bt-point2-point-constraint) info (body0_trans bt-transform) (body1_trans bt-transform))
  (btPoint2PointConstraint_getInfo2NonVirtual (ff-pointer self) info body0_trans body1_trans))

(cl:defmethod update-rhs ((self bt-point2-point-constraint) (timeStep cl:number))
  (btPoint2PointConstraint_updateRHS (ff-pointer self) timeStep))

(cl:defmethod set-pivot-a ((self bt-point2-point-constraint) (pivotA bt-vector3))
  (btPoint2PointConstraint_setPivotA (ff-pointer self) pivotA))

(cl:defmethod set-pivot-b ((self bt-point2-point-constraint) (pivotB bt-vector3))
  (btPoint2PointConstraint_setPivotB (ff-pointer self) pivotB))

(cl:defmethod get-pivot-in-a ((self bt-point2-point-constraint))
  (btPoint2PointConstraint_getPivotInA (ff-pointer self)))

(cl:defmethod get-pivot-in-b ((self bt-point2-point-constraint))
  (btPoint2PointConstraint_getPivotInB (ff-pointer self)))

(cl:defmethod set-param ((self bt-point2-point-constraint) (num cl:integer) (value cl:number) (axis cl:integer))
  (btPoint2PointConstraint_setParam (ff-pointer self) num value axis))

(cl:defmethod set-param ((self bt-point2-point-constraint) (num cl:integer) (value cl:number))
  (btPoint2PointConstraint_setParam (ff-pointer self) num value))

(cl:defmethod get-param ((self bt-point2-point-constraint) (num cl:integer) (axis cl:integer))
  (btPoint2PointConstraint_getParam (ff-pointer self) num axis))

(cl:defmethod get-param ((self bt-point2-point-constraint) (num cl:integer))
  (btPoint2PointConstraint_getParam (ff-pointer self) num))

(cl:defmethod calculate-serialize-buffer-size ((self bt-point2-point-constraint))
  (btPoint2PointConstraint_calculateSerializeBufferSize (ff-pointer self)))

(cl:defmethod serialize ((self bt-point2-point-constraint) dataBuffer (serializer bt-serializer))
  (btPoint2PointConstraint_serialize (ff-pointer self) dataBuffer serializer))


(cl:defclass bt-point2-point-constraint-float-data()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-point2-point-constraint-float-data) &key)
  (setf (slot-value obj 'ff-pointer) (new_btPoint2PointConstraintFloatData)))


(cl:defclass bt-point2-point-constraint-double-data()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-point2-point-constraint-double-data) &key)
  (setf (slot-value obj 'ff-pointer) (new_btPoint2PointConstraintDoubleData)))


(cl:defclass bt-hinge-constraint(btTypedConstraint)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-hinge-constraint) &key (rbA bt-rigid-body) (rbB bt-rigid-body) (pivotInA bt-vector3) (pivotInB bt-vector3) (axisInA bt-vector3) (axisInB bt-vector3) (useReferenceFrameA t))
  (setf (slot-value obj 'ff-pointer) (new_btHingeConstraint rbA rbB pivotInA pivotInB axisInA axisInB useReferenceFrameA)))

(cl:defmethod initialize-instance :after ((obj bt-hinge-constraint) &key (rbA bt-rigid-body) (rbB bt-rigid-body) (pivotInA bt-vector3) (pivotInB bt-vector3) (axisInA bt-vector3) (axisInB bt-vector3))
  (setf (slot-value obj 'ff-pointer) (new_btHingeConstraint rbA rbB pivotInA pivotInB axisInA axisInB)))

(cl:defmethod initialize-instance :after ((obj bt-hinge-constraint) &key (rbA bt-rigid-body) (pivotInA bt-vector3) (axisInA bt-vector3) (useReferenceFrameA t))
  (setf (slot-value obj 'ff-pointer) (new_btHingeConstraint rbA pivotInA axisInA useReferenceFrameA)))

(cl:defmethod initialize-instance :after ((obj bt-hinge-constraint) &key (rbA bt-rigid-body) (pivotInA bt-vector3) (axisInA bt-vector3))
  (setf (slot-value obj 'ff-pointer) (new_btHingeConstraint rbA pivotInA axisInA)))

(cl:defmethod initialize-instance :after ((obj bt-hinge-constraint) &key (rbA bt-rigid-body) (rbB bt-rigid-body) (rbAFrame bt-transform) (rbBFrame bt-transform) (useReferenceFrameA t))
  (setf (slot-value obj 'ff-pointer) (new_btHingeConstraint rbA rbB rbAFrame rbBFrame useReferenceFrameA)))

(cl:defmethod initialize-instance :after ((obj bt-hinge-constraint) &key (rbA bt-rigid-body) (rbB bt-rigid-body) (rbAFrame bt-transform) (rbBFrame bt-transform))
  (setf (slot-value obj 'ff-pointer) (new_btHingeConstraint rbA rbB rbAFrame rbBFrame)))

(cl:defmethod initialize-instance :after ((obj bt-hinge-constraint) &key (rbA bt-rigid-body) (rbAFrame bt-transform) (useReferenceFrameA t))
  (setf (slot-value obj 'ff-pointer) (new_btHingeConstraint rbA rbAFrame useReferenceFrameA)))

(cl:defmethod initialize-instance :after ((obj bt-hinge-constraint) &key (rbA bt-rigid-body) (rbAFrame bt-transform))
  (setf (slot-value obj 'ff-pointer) (new_btHingeConstraint rbA rbAFrame)))

(cl:defmethod build-jacobian ((self bt-hinge-constraint))
  (btHingeConstraint_buildJacobian (ff-pointer self)))

(cl:defmethod get-info1 ((self bt-hinge-constraint) info)
  (btHingeConstraint_getInfo1 (ff-pointer self) info))

(cl:defmethod get-info1-non-virtual ((self bt-hinge-constraint) info)
  (btHingeConstraint_getInfo1NonVirtual (ff-pointer self) info))

(cl:defmethod get-info2 ((self bt-hinge-constraint) info)
  (btHingeConstraint_getInfo2 (ff-pointer self) info))

(cl:defmethod get-info2-non-virtual ((self bt-hinge-constraint) info (transA bt-transform) (transB bt-transform) (angVelA bt-vector3) (angVelB bt-vector3))
  (btHingeConstraint_getInfo2NonVirtual (ff-pointer self) info transA transB angVelA angVelB))

(cl:defmethod get-info2-internal ((self bt-hinge-constraint) info (transA bt-transform) (transB bt-transform) (angVelA bt-vector3) (angVelB bt-vector3))
  (btHingeConstraint_getInfo2Internal (ff-pointer self) info transA transB angVelA angVelB))

(cl:defmethod get-info2-internal-using-frame-offset ((self bt-hinge-constraint) info (transA bt-transform) (transB bt-transform) (angVelA bt-vector3) (angVelB bt-vector3))
  (btHingeConstraint_getInfo2InternalUsingFrameOffset (ff-pointer self) info transA transB angVelA angVelB))

(cl:defmethod update-rhs ((self bt-hinge-constraint) (timeStep cl:number))
  (btHingeConstraint_updateRHS (ff-pointer self) timeStep))

(cl:defmethod get-rigid-body-a ((self bt-hinge-constraint))
  (btHingeConstraint_getRigidBodyA (ff-pointer self)))

(cl:defmethod get-rigid-body-b ((self bt-hinge-constraint))
  (btHingeConstraint_getRigidBodyB (ff-pointer self)))

(cl:defmethod get-rigid-body-a ((self bt-hinge-constraint))
  (btHingeConstraint_getRigidBodyA (ff-pointer self)))

(cl:defmethod get-rigid-body-b ((self bt-hinge-constraint))
  (btHingeConstraint_getRigidBodyB (ff-pointer self)))

(cl:defmethod get-frame-offset-a ((self bt-hinge-constraint))
  (btHingeConstraint_getFrameOffsetA (ff-pointer self)))

(cl:defmethod get-frame-offset-b ((self bt-hinge-constraint))
  (btHingeConstraint_getFrameOffsetB (ff-pointer self)))

(cl:defmethod set-frames ((self bt-hinge-constraint) (frameA bt-transform) (frameB bt-transform))
  (btHingeConstraint_setFrames (ff-pointer self) frameA frameB))

(cl:defmethod set-angular-only ((self bt-hinge-constraint) (angularOnly t))
  (btHingeConstraint_setAngularOnly (ff-pointer self) angularOnly))

(cl:defmethod enable-angular-motor ((self bt-hinge-constraint) (enableMotor t) (targetVelocity cl:number) (maxMotorImpulse cl:number))
  (btHingeConstraint_enableAngularMotor (ff-pointer self) enableMotor targetVelocity maxMotorImpulse))

(cl:defmethod enable-motor ((self bt-hinge-constraint) (enableMotor t))
  (btHingeConstraint_enableMotor (ff-pointer self) enableMotor))

(cl:defmethod set-max-motor-impulse ((self bt-hinge-constraint) (maxMotorImpulse cl:number))
  (btHingeConstraint_setMaxMotorImpulse (ff-pointer self) maxMotorImpulse))

(cl:defmethod set-motor-target ((self bt-hinge-constraint) (qAinB bt-quaternion) (dt cl:number))
  (btHingeConstraint_setMotorTarget (ff-pointer self) qAinB dt))

(cl:defmethod set-motor-target ((self bt-hinge-constraint) (targetAngle cl:number) (dt cl:number))
  (btHingeConstraint_setMotorTarget (ff-pointer self) targetAngle dt))

(cl:defmethod set-limit ((self bt-hinge-constraint) (low cl:number) (high cl:number) (_softness cl:number) (_biasFactor cl:number) (_relaxationFactor cl:number))
  (btHingeConstraint_setLimit (ff-pointer self) low high _softness _biasFactor _relaxationFactor))

(cl:defmethod set-limit ((self bt-hinge-constraint) (low cl:number) (high cl:number) (_softness cl:number) (_biasFactor cl:number))
  (btHingeConstraint_setLimit (ff-pointer self) low high _softness _biasFactor))

(cl:defmethod set-limit ((self bt-hinge-constraint) (low cl:number) (high cl:number) (_softness cl:number))
  (btHingeConstraint_setLimit (ff-pointer self) low high _softness))

(cl:defmethod set-limit ((self bt-hinge-constraint) (low cl:number) (high cl:number))
  (btHingeConstraint_setLimit (ff-pointer self) low high))

(cl:defmethod set-axis ((self bt-hinge-constraint) (axisInA bt-vector3))
  (btHingeConstraint_setAxis (ff-pointer self) axisInA))

(cl:defmethod get-lower-limit ((self bt-hinge-constraint))
  (btHingeConstraint_getLowerLimit (ff-pointer self)))

(cl:defmethod get-upper-limit ((self bt-hinge-constraint))
  (btHingeConstraint_getUpperLimit (ff-pointer self)))

(cl:defmethod get-hinge-angle ((self bt-hinge-constraint))
  (btHingeConstraint_getHingeAngle (ff-pointer self)))

(cl:defmethod get-hinge-angle ((self bt-hinge-constraint) (transA bt-transform) (transB bt-transform))
  (btHingeConstraint_getHingeAngle (ff-pointer self) transA transB))

(cl:defmethod test-limit ((self bt-hinge-constraint) (transA bt-transform) (transB bt-transform))
  (btHingeConstraint_testLimit (ff-pointer self) transA transB))

(cl:defmethod get-aframe ((self bt-hinge-constraint))
  (btHingeConstraint_getAFrame (ff-pointer self)))

(cl:defmethod get-bframe ((self bt-hinge-constraint))
  (btHingeConstraint_getBFrame (ff-pointer self)))

(cl:defmethod get-aframe ((self bt-hinge-constraint))
  (btHingeConstraint_getAFrame (ff-pointer self)))

(cl:defmethod get-bframe ((self bt-hinge-constraint))
  (btHingeConstraint_getBFrame (ff-pointer self)))

(cl:defmethod get-solve-limit ((self bt-hinge-constraint))
  (btHingeConstraint_getSolveLimit (ff-pointer self)))

(cl:defmethod get-limit-sign ((self bt-hinge-constraint))
  (btHingeConstraint_getLimitSign (ff-pointer self)))

(cl:defmethod get-angular-only ((self bt-hinge-constraint))
  (btHingeConstraint_getAngularOnly (ff-pointer self)))

(cl:defmethod get-enable-angular-motor ((self bt-hinge-constraint))
  (btHingeConstraint_getEnableAngularMotor (ff-pointer self)))

(cl:defmethod get-motor-target-velosity ((self bt-hinge-constraint))
  (btHingeConstraint_getMotorTargetVelosity (ff-pointer self)))

(cl:defmethod get-max-motor-impulse ((self bt-hinge-constraint))
  (btHingeConstraint_getMaxMotorImpulse (ff-pointer self)))

(cl:defmethod get-use-frame-offset ((self bt-hinge-constraint))
  (btHingeConstraint_getUseFrameOffset (ff-pointer self)))

(cl:defmethod set-use-frame-offset ((self bt-hinge-constraint) (frameOffsetOnOff t))
  (btHingeConstraint_setUseFrameOffset (ff-pointer self) frameOffsetOnOff))

(cl:defmethod set-param ((self bt-hinge-constraint) (num cl:integer) (value cl:number) (axis cl:integer))
  (btHingeConstraint_setParam (ff-pointer self) num value axis))

(cl:defmethod set-param ((self bt-hinge-constraint) (num cl:integer) (value cl:number))
  (btHingeConstraint_setParam (ff-pointer self) num value))

(cl:defmethod get-param ((self bt-hinge-constraint) (num cl:integer) (axis cl:integer))
  (btHingeConstraint_getParam (ff-pointer self) num axis))

(cl:defmethod get-param ((self bt-hinge-constraint) (num cl:integer))
  (btHingeConstraint_getParam (ff-pointer self) num))

(cl:defmethod calculate-serialize-buffer-size ((self bt-hinge-constraint))
  (btHingeConstraint_calculateSerializeBufferSize (ff-pointer self)))

(cl:defmethod serialize ((self bt-hinge-constraint) dataBuffer (serializer bt-serializer))
  (btHingeConstraint_serialize (ff-pointer self) dataBuffer serializer))


(cl:defclass bt-hinge-constraint-double-data()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-hinge-constraint-double-data) &key)
  (setf (slot-value obj 'ff-pointer) (new_btHingeConstraintDoubleData)))


(cl:defclass bt-hinge-constraint-float-data()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-hinge-constraint-float-data) &key)
  (setf (slot-value obj 'ff-pointer) (new_btHingeConstraintFloatData)))


(cl:defclass bt-cone-twist-constraint(btTypedConstraint)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-cone-twist-constraint) &key (rbA bt-rigid-body) (rbB bt-rigid-body) (rbAFrame bt-transform) (rbBFrame bt-transform))
  (setf (slot-value obj 'ff-pointer) (new_btConeTwistConstraint rbA rbB rbAFrame rbBFrame)))

(cl:defmethod initialize-instance :after ((obj bt-cone-twist-constraint) &key (rbA bt-rigid-body) (rbAFrame bt-transform))
  (setf (slot-value obj 'ff-pointer) (new_btConeTwistConstraint rbA rbAFrame)))

(cl:defmethod build-jacobian ((self bt-cone-twist-constraint))
  (btConeTwistConstraint_buildJacobian (ff-pointer self)))

(cl:defmethod get-info1 ((self bt-cone-twist-constraint) info)
  (btConeTwistConstraint_getInfo1 (ff-pointer self) info))

(cl:defmethod get-info1-non-virtual ((self bt-cone-twist-constraint) info)
  (btConeTwistConstraint_getInfo1NonVirtual (ff-pointer self) info))

(cl:defmethod get-info2 ((self bt-cone-twist-constraint) info)
  (btConeTwistConstraint_getInfo2 (ff-pointer self) info))

(cl:defmethod get-info2-non-virtual ((self bt-cone-twist-constraint) info (transA bt-transform) (transB bt-transform) (invInertiaWorldA bt-matrix3x3) (invInertiaWorldB bt-matrix3x3))
  (btConeTwistConstraint_getInfo2NonVirtual (ff-pointer self) info transA transB invInertiaWorldA invInertiaWorldB))

(cl:defmethod solve-constraint-obsolete ((self bt-cone-twist-constraint) (bodyA bt-rigid-body) (bodyB bt-rigid-body) (timeStep cl:number))
  (btConeTwistConstraint_solveConstraintObsolete (ff-pointer self) bodyA bodyB timeStep))

(cl:defmethod update-rhs ((self bt-cone-twist-constraint) (timeStep cl:number))
  (btConeTwistConstraint_updateRHS (ff-pointer self) timeStep))

(cl:defmethod get-rigid-body-a ((self bt-cone-twist-constraint))
  (btConeTwistConstraint_getRigidBodyA (ff-pointer self)))

(cl:defmethod get-rigid-body-b ((self bt-cone-twist-constraint))
  (btConeTwistConstraint_getRigidBodyB (ff-pointer self)))

(cl:defmethod set-angular-only ((self bt-cone-twist-constraint) (angularOnly t))
  (btConeTwistConstraint_setAngularOnly (ff-pointer self) angularOnly))

(cl:defmethod set-limit ((self bt-cone-twist-constraint) (limitIndex cl:integer) (limitValue cl:number))
  (btConeTwistConstraint_setLimit (ff-pointer self) limitIndex limitValue))

(cl:defmethod set-limit ((self bt-cone-twist-constraint) (_swingSpan1 cl:number) (_swingSpan2 cl:number) (_twistSpan cl:number) (_softness cl:number) (_biasFactor cl:number) (_relaxationFactor cl:number))
  (btConeTwistConstraint_setLimit (ff-pointer self) _swingSpan1 _swingSpan2 _twistSpan _softness _biasFactor _relaxationFactor))

(cl:defmethod set-limit ((self bt-cone-twist-constraint) (_swingSpan1 cl:number) (_swingSpan2 cl:number) (_twistSpan cl:number) (_softness cl:number) (_biasFactor cl:number))
  (btConeTwistConstraint_setLimit (ff-pointer self) _swingSpan1 _swingSpan2 _twistSpan _softness _biasFactor))

(cl:defmethod set-limit ((self bt-cone-twist-constraint) (_swingSpan1 cl:number) (_swingSpan2 cl:number) (_twistSpan cl:number) (_softness cl:number))
  (btConeTwistConstraint_setLimit (ff-pointer self) _swingSpan1 _swingSpan2 _twistSpan _softness))

(cl:defmethod set-limit ((self bt-cone-twist-constraint) (_swingSpan1 cl:number) (_swingSpan2 cl:number) (_twistSpan cl:number))
  (btConeTwistConstraint_setLimit (ff-pointer self) _swingSpan1 _swingSpan2 _twistSpan))

(cl:defmethod get-aframe ((self bt-cone-twist-constraint))
  (btConeTwistConstraint_getAFrame (ff-pointer self)))

(cl:defmethod get-bframe ((self bt-cone-twist-constraint))
  (btConeTwistConstraint_getBFrame (ff-pointer self)))

(cl:defmethod get-solve-twist-limit ((self bt-cone-twist-constraint))
  (btConeTwistConstraint_getSolveTwistLimit (ff-pointer self)))

(cl:defmethod get-solve-swing-limit ((self bt-cone-twist-constraint))
  (btConeTwistConstraint_getSolveSwingLimit (ff-pointer self)))

(cl:defmethod get-twist-limit-sign ((self bt-cone-twist-constraint))
  (btConeTwistConstraint_getTwistLimitSign (ff-pointer self)))

(cl:defmethod calc-angle-info ((self bt-cone-twist-constraint))
  (btConeTwistConstraint_calcAngleInfo (ff-pointer self)))

(cl:defmethod calc-angle-info2 ((self bt-cone-twist-constraint) (transA bt-transform) (transB bt-transform) (invInertiaWorldA bt-matrix3x3) (invInertiaWorldB bt-matrix3x3))
  (btConeTwistConstraint_calcAngleInfo2 (ff-pointer self) transA transB invInertiaWorldA invInertiaWorldB))

(cl:defmethod get-swing-span1 ((self bt-cone-twist-constraint))
  (btConeTwistConstraint_getSwingSpan1 (ff-pointer self)))

(cl:defmethod get-swing-span2 ((self bt-cone-twist-constraint))
  (btConeTwistConstraint_getSwingSpan2 (ff-pointer self)))

(cl:defmethod get-twist-span ((self bt-cone-twist-constraint))
  (btConeTwistConstraint_getTwistSpan (ff-pointer self)))

(cl:defmethod get-twist-angle ((self bt-cone-twist-constraint))
  (btConeTwistConstraint_getTwistAngle (ff-pointer self)))

(cl:defmethod is-past-swing-limit ((self bt-cone-twist-constraint))
  (btConeTwistConstraint_isPastSwingLimit (ff-pointer self)))

(cl:defmethod set-damping ((self bt-cone-twist-constraint) (damping cl:number))
  (btConeTwistConstraint_setDamping (ff-pointer self) damping))

(cl:defmethod enable-motor ((self bt-cone-twist-constraint) (b t))
  (btConeTwistConstraint_enableMotor (ff-pointer self) b))

(cl:defmethod set-max-motor-impulse ((self bt-cone-twist-constraint) (maxMotorImpulse cl:number))
  (btConeTwistConstraint_setMaxMotorImpulse (ff-pointer self) maxMotorImpulse))

(cl:defmethod set-max-motor-impulse-normalized ((self bt-cone-twist-constraint) (maxMotorImpulse cl:number))
  (btConeTwistConstraint_setMaxMotorImpulseNormalized (ff-pointer self) maxMotorImpulse))

(cl:defmethod get-fix-thresh ((self bt-cone-twist-constraint))
  (btConeTwistConstraint_getFixThresh (ff-pointer self)))

(cl:defmethod set-fix-thresh ((self bt-cone-twist-constraint) (fixThresh cl:number))
  (btConeTwistConstraint_setFixThresh (ff-pointer self) fixThresh))

(cl:defmethod set-motor-target ((self bt-cone-twist-constraint) (q bt-quaternion))
  (btConeTwistConstraint_setMotorTarget (ff-pointer self) q))

(cl:defmethod set-motor-target-in-constraint-space ((self bt-cone-twist-constraint) (q bt-quaternion))
  (btConeTwistConstraint_setMotorTargetInConstraintSpace (ff-pointer self) q))

(cl:defmethod get-point-for-angle ((self bt-cone-twist-constraint) (fAngleInRadians cl:number) (fLength cl:number))
  (btConeTwistConstraint_GetPointForAngle (ff-pointer self) fAngleInRadians fLength))

(cl:defmethod set-param ((self bt-cone-twist-constraint) (num cl:integer) (value cl:number) (axis cl:integer))
  (btConeTwistConstraint_setParam (ff-pointer self) num value axis))

(cl:defmethod set-param ((self bt-cone-twist-constraint) (num cl:integer) (value cl:number))
  (btConeTwistConstraint_setParam (ff-pointer self) num value))

(cl:defmethod set-frames ((self bt-cone-twist-constraint) (frameA bt-transform) (frameB bt-transform))
  (btConeTwistConstraint_setFrames (ff-pointer self) frameA frameB))

(cl:defmethod get-frame-offset-a ((self bt-cone-twist-constraint))
  (btConeTwistConstraint_getFrameOffsetA (ff-pointer self)))

(cl:defmethod get-frame-offset-b ((self bt-cone-twist-constraint))
  (btConeTwistConstraint_getFrameOffsetB (ff-pointer self)))

(cl:defmethod get-param ((self bt-cone-twist-constraint) (num cl:integer) (axis cl:integer))
  (btConeTwistConstraint_getParam (ff-pointer self) num axis))

(cl:defmethod get-param ((self bt-cone-twist-constraint) (num cl:integer))
  (btConeTwistConstraint_getParam (ff-pointer self) num))

(cl:defmethod calculate-serialize-buffer-size ((self bt-cone-twist-constraint))
  (btConeTwistConstraint_calculateSerializeBufferSize (ff-pointer self)))

(cl:defmethod serialize ((self bt-cone-twist-constraint) dataBuffer (serializer bt-serializer))
  (btConeTwistConstraint_serialize (ff-pointer self) dataBuffer serializer))


(cl:defclass bt-cone-twist-constraint-data()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-cone-twist-constraint-data) &key)
  (setf (slot-value obj 'ff-pointer) (new_btConeTwistConstraintData)))


(cl:defclass bt-rotational-limit-motor()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod (cl:setf m_loLimit) (arg0 (obj bt-rotational-limit-motor))
  (btRotationalLimitMotor_m_loLimit_set (ff-pointer obj) arg0))

(cl:defmethod m_loLimit ((obj bt-rotational-limit-motor))
  (btRotationalLimitMotor_m_loLimit_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_hiLimit) (arg0 (obj bt-rotational-limit-motor))
  (btRotationalLimitMotor_m_hiLimit_set (ff-pointer obj) arg0))

(cl:defmethod m_hiLimit ((obj bt-rotational-limit-motor))
  (btRotationalLimitMotor_m_hiLimit_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_targetVelocity) (arg0 (obj bt-rotational-limit-motor))
  (btRotationalLimitMotor_m_targetVelocity_set (ff-pointer obj) arg0))

(cl:defmethod m_targetVelocity ((obj bt-rotational-limit-motor))
  (btRotationalLimitMotor_m_targetVelocity_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_maxMotorForce) (arg0 (obj bt-rotational-limit-motor))
  (btRotationalLimitMotor_m_maxMotorForce_set (ff-pointer obj) arg0))

(cl:defmethod m_maxMotorForce ((obj bt-rotational-limit-motor))
  (btRotationalLimitMotor_m_maxMotorForce_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_maxLimitForce) (arg0 (obj bt-rotational-limit-motor))
  (btRotationalLimitMotor_m_maxLimitForce_set (ff-pointer obj) arg0))

(cl:defmethod m_maxLimitForce ((obj bt-rotational-limit-motor))
  (btRotationalLimitMotor_m_maxLimitForce_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_damping) (arg0 (obj bt-rotational-limit-motor))
  (btRotationalLimitMotor_m_damping_set (ff-pointer obj) arg0))

(cl:defmethod m_damping ((obj bt-rotational-limit-motor))
  (btRotationalLimitMotor_m_damping_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_limitSoftness) (arg0 (obj bt-rotational-limit-motor))
  (btRotationalLimitMotor_m_limitSoftness_set (ff-pointer obj) arg0))

(cl:defmethod m_limitSoftness ((obj bt-rotational-limit-motor))
  (btRotationalLimitMotor_m_limitSoftness_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_normalCFM) (arg0 (obj bt-rotational-limit-motor))
  (btRotationalLimitMotor_m_normalCFM_set (ff-pointer obj) arg0))

(cl:defmethod m_normalCFM ((obj bt-rotational-limit-motor))
  (btRotationalLimitMotor_m_normalCFM_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_stopERP) (arg0 (obj bt-rotational-limit-motor))
  (btRotationalLimitMotor_m_stopERP_set (ff-pointer obj) arg0))

(cl:defmethod m_stopERP ((obj bt-rotational-limit-motor))
  (btRotationalLimitMotor_m_stopERP_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_stopCFM) (arg0 (obj bt-rotational-limit-motor))
  (btRotationalLimitMotor_m_stopCFM_set (ff-pointer obj) arg0))

(cl:defmethod m_stopCFM ((obj bt-rotational-limit-motor))
  (btRotationalLimitMotor_m_stopCFM_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_bounce) (arg0 (obj bt-rotational-limit-motor))
  (btRotationalLimitMotor_m_bounce_set (ff-pointer obj) arg0))

(cl:defmethod m_bounce ((obj bt-rotational-limit-motor))
  (btRotationalLimitMotor_m_bounce_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_enableMotor) (arg0 (obj bt-rotational-limit-motor))
  (btRotationalLimitMotor_m_enableMotor_set (ff-pointer obj) arg0))

(cl:defmethod m_enableMotor ((obj bt-rotational-limit-motor))
  (btRotationalLimitMotor_m_enableMotor_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_currentLimitError) (arg0 (obj bt-rotational-limit-motor))
  (btRotationalLimitMotor_m_currentLimitError_set (ff-pointer obj) arg0))

(cl:defmethod m_currentLimitError ((obj bt-rotational-limit-motor))
  (btRotationalLimitMotor_m_currentLimitError_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_currentPosition) (arg0 (obj bt-rotational-limit-motor))
  (btRotationalLimitMotor_m_currentPosition_set (ff-pointer obj) arg0))

(cl:defmethod m_currentPosition ((obj bt-rotational-limit-motor))
  (btRotationalLimitMotor_m_currentPosition_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_currentLimit) (arg0 (obj bt-rotational-limit-motor))
  (btRotationalLimitMotor_m_currentLimit_set (ff-pointer obj) arg0))

(cl:defmethod m_currentLimit ((obj bt-rotational-limit-motor))
  (btRotationalLimitMotor_m_currentLimit_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_accumulatedImpulse) (arg0 (obj bt-rotational-limit-motor))
  (btRotationalLimitMotor_m_accumulatedImpulse_set (ff-pointer obj) arg0))

(cl:defmethod m_accumulatedImpulse ((obj bt-rotational-limit-motor))
  (btRotationalLimitMotor_m_accumulatedImpulse_get (ff-pointer obj)))

(cl:defmethod initialize-instance :after ((obj bt-rotational-limit-motor) &key)
  (setf (slot-value obj 'ff-pointer) (new_btRotationalLimitMotor)))

(cl:defmethod initialize-instance :after ((obj bt-rotational-limit-motor) &key (limot bt-rotational-limit-motor))
  (setf (slot-value obj 'ff-pointer) (new_btRotationalLimitMotor (ff-pointer limot))))

(cl:defmethod is-limited ((self bt-rotational-limit-motor))
  (btRotationalLimitMotor_isLimited (ff-pointer self)))

(cl:defmethod need-apply-torques ((self bt-rotational-limit-motor))
  (btRotationalLimitMotor_needApplyTorques (ff-pointer self)))

(cl:defmethod test-limit-value ((self bt-rotational-limit-motor) (test_value cl:number))
  (btRotationalLimitMotor_testLimitValue (ff-pointer self) test_value))

(cl:defmethod solve-angular-limits ((self bt-rotational-limit-motor) (timeStep cl:number) (axis bt-vector3) (jacDiagABInv cl:number) (body0 bt-rigid-body) (body1 bt-rigid-body))
  (btRotationalLimitMotor_solveAngularLimits (ff-pointer self) timeStep axis jacDiagABInv body0 body1))


(cl:defclass bt-translational-limit-motor()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod (cl:setf m_lowerLimit) (arg0 (obj bt-translational-limit-motor))
  (btTranslationalLimitMotor_m_lowerLimit_set (ff-pointer obj) arg0))

(cl:defmethod m_lowerLimit ((obj bt-translational-limit-motor))
  (btTranslationalLimitMotor_m_lowerLimit_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_upperLimit) (arg0 (obj bt-translational-limit-motor))
  (btTranslationalLimitMotor_m_upperLimit_set (ff-pointer obj) arg0))

(cl:defmethod m_upperLimit ((obj bt-translational-limit-motor))
  (btTranslationalLimitMotor_m_upperLimit_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_accumulatedImpulse) (arg0 (obj bt-translational-limit-motor))
  (btTranslationalLimitMotor_m_accumulatedImpulse_set (ff-pointer obj) arg0))

(cl:defmethod m_accumulatedImpulse ((obj bt-translational-limit-motor))
  (btTranslationalLimitMotor_m_accumulatedImpulse_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_limitSoftness) (arg0 (obj bt-translational-limit-motor))
  (btTranslationalLimitMotor_m_limitSoftness_set (ff-pointer obj) arg0))

(cl:defmethod m_limitSoftness ((obj bt-translational-limit-motor))
  (btTranslationalLimitMotor_m_limitSoftness_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_damping) (arg0 (obj bt-translational-limit-motor))
  (btTranslationalLimitMotor_m_damping_set (ff-pointer obj) arg0))

(cl:defmethod m_damping ((obj bt-translational-limit-motor))
  (btTranslationalLimitMotor_m_damping_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_restitution) (arg0 (obj bt-translational-limit-motor))
  (btTranslationalLimitMotor_m_restitution_set (ff-pointer obj) arg0))

(cl:defmethod m_restitution ((obj bt-translational-limit-motor))
  (btTranslationalLimitMotor_m_restitution_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_normalCFM) (arg0 (obj bt-translational-limit-motor))
  (btTranslationalLimitMotor_m_normalCFM_set (ff-pointer obj) arg0))

(cl:defmethod m_normalCFM ((obj bt-translational-limit-motor))
  (btTranslationalLimitMotor_m_normalCFM_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_stopERP) (arg0 (obj bt-translational-limit-motor))
  (btTranslationalLimitMotor_m_stopERP_set (ff-pointer obj) arg0))

(cl:defmethod m_stopERP ((obj bt-translational-limit-motor))
  (btTranslationalLimitMotor_m_stopERP_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_stopCFM) (arg0 (obj bt-translational-limit-motor))
  (btTranslationalLimitMotor_m_stopCFM_set (ff-pointer obj) arg0))

(cl:defmethod m_stopCFM ((obj bt-translational-limit-motor))
  (btTranslationalLimitMotor_m_stopCFM_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_enableMotor) (arg0 (obj bt-translational-limit-motor))
  (btTranslationalLimitMotor_m_enableMotor_set (ff-pointer obj) arg0))

(cl:defmethod m_enableMotor ((obj bt-translational-limit-motor))
  (btTranslationalLimitMotor_m_enableMotor_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_targetVelocity) (arg0 (obj bt-translational-limit-motor))
  (btTranslationalLimitMotor_m_targetVelocity_set (ff-pointer obj) arg0))

(cl:defmethod m_targetVelocity ((obj bt-translational-limit-motor))
  (btTranslationalLimitMotor_m_targetVelocity_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_maxMotorForce) (arg0 (obj bt-translational-limit-motor))
  (btTranslationalLimitMotor_m_maxMotorForce_set (ff-pointer obj) arg0))

(cl:defmethod m_maxMotorForce ((obj bt-translational-limit-motor))
  (btTranslationalLimitMotor_m_maxMotorForce_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_currentLimitError) (arg0 (obj bt-translational-limit-motor))
  (btTranslationalLimitMotor_m_currentLimitError_set (ff-pointer obj) arg0))

(cl:defmethod m_currentLimitError ((obj bt-translational-limit-motor))
  (btTranslationalLimitMotor_m_currentLimitError_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_currentLinearDiff) (arg0 (obj bt-translational-limit-motor))
  (btTranslationalLimitMotor_m_currentLinearDiff_set (ff-pointer obj) arg0))

(cl:defmethod m_currentLinearDiff ((obj bt-translational-limit-motor))
  (btTranslationalLimitMotor_m_currentLinearDiff_get (ff-pointer obj)))

(cl:defmethod (cl:setf m_currentLimit) (arg0 (obj bt-translational-limit-motor))
  (btTranslationalLimitMotor_m_currentLimit_set (ff-pointer obj) arg0))

(cl:defmethod m_currentLimit ((obj bt-translational-limit-motor))
  (btTranslationalLimitMotor_m_currentLimit_get (ff-pointer obj)))

(cl:defmethod initialize-instance :after ((obj bt-translational-limit-motor) &key)
  (setf (slot-value obj 'ff-pointer) (new_btTranslationalLimitMotor)))

(cl:defmethod initialize-instance :after ((obj bt-translational-limit-motor) &key (other bt-translational-limit-motor))
  (setf (slot-value obj 'ff-pointer) (new_btTranslationalLimitMotor (ff-pointer other))))

(cl:defmethod is-limited ((self bt-translational-limit-motor) (limitIndex cl:integer))
  (btTranslationalLimitMotor_isLimited (ff-pointer self) limitIndex))

(cl:defmethod need-apply-force ((self bt-translational-limit-motor) (limitIndex cl:integer))
  (btTranslationalLimitMotor_needApplyForce (ff-pointer self) limitIndex))

(cl:defmethod test-limit-value ((self bt-translational-limit-motor) (limitIndex cl:integer) (test_value cl:number))
  (btTranslationalLimitMotor_testLimitValue (ff-pointer self) limitIndex test_value))

(cl:defmethod solve-linear-axis ((self bt-translational-limit-motor) (timeStep cl:number) (jacDiagABInv cl:number) (body1 bt-rigid-body) (pointInA bt-vector3) (body2 bt-rigid-body) (pointInB bt-vector3) (limit_index cl:integer) (axis_normal_on_a bt-vector3) (anchorPos bt-vector3))
  (btTranslationalLimitMotor_solveLinearAxis (ff-pointer self) timeStep jacDiagABInv body1 pointInA body2 pointInB limit_index axis_normal_on_a anchorPos))


(cl:defclass bt-generic6-dof-constraint(btTypedConstraint)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod (cl:setf m_useSolveConstraintObsolete) (arg0 (obj bt-generic6-dof-constraint))
  (btGeneric6DofConstraint_m_useSolveConstraintObsolete_set (ff-pointer obj) arg0))

(cl:defmethod m_useSolveConstraintObsolete ((obj bt-generic6-dof-constraint))
  (btGeneric6DofConstraint_m_useSolveConstraintObsolete_get (ff-pointer obj)))

(cl:defmethod initialize-instance :after ((obj bt-generic6-dof-constraint) &key (rbA bt-rigid-body) (rbB bt-rigid-body) (frameInA bt-transform) (frameInB bt-transform) (useLinearReferenceFrameA t))
  (setf (slot-value obj 'ff-pointer) (new_btGeneric6DofConstraint rbA rbB frameInA frameInB useLinearReferenceFrameA)))

(cl:defmethod initialize-instance :after ((obj bt-generic6-dof-constraint) &key (rbB bt-rigid-body) (frameInB bt-transform) (useLinearReferenceFrameB t))
  (setf (slot-value obj 'ff-pointer) (new_btGeneric6DofConstraint rbB frameInB useLinearReferenceFrameB)))

(cl:defmethod calculate-transforms ((self bt-generic6-dof-constraint) (transA bt-transform) (transB bt-transform))
  (btGeneric6DofConstraint_calculateTransforms (ff-pointer self) transA transB))

(cl:defmethod calculate-transforms ((self bt-generic6-dof-constraint))
  (btGeneric6DofConstraint_calculateTransforms (ff-pointer self)))

(cl:defmethod get-calculated-transform-a ((self bt-generic6-dof-constraint))
  (btGeneric6DofConstraint_getCalculatedTransformA (ff-pointer self)))

(cl:defmethod get-calculated-transform-b ((self bt-generic6-dof-constraint))
  (btGeneric6DofConstraint_getCalculatedTransformB (ff-pointer self)))

(cl:defmethod get-frame-offset-a ((self bt-generic6-dof-constraint))
  (btGeneric6DofConstraint_getFrameOffsetA (ff-pointer self)))

(cl:defmethod get-frame-offset-b ((self bt-generic6-dof-constraint))
  (btGeneric6DofConstraint_getFrameOffsetB (ff-pointer self)))

(cl:defmethod get-frame-offset-a ((self bt-generic6-dof-constraint))
  (btGeneric6DofConstraint_getFrameOffsetA (ff-pointer self)))

(cl:defmethod get-frame-offset-b ((self bt-generic6-dof-constraint))
  (btGeneric6DofConstraint_getFrameOffsetB (ff-pointer self)))

(cl:defmethod build-jacobian ((self bt-generic6-dof-constraint))
  (btGeneric6DofConstraint_buildJacobian (ff-pointer self)))

(cl:defmethod get-info1 ((self bt-generic6-dof-constraint) info)
  (btGeneric6DofConstraint_getInfo1 (ff-pointer self) info))

(cl:defmethod get-info1-non-virtual ((self bt-generic6-dof-constraint) info)
  (btGeneric6DofConstraint_getInfo1NonVirtual (ff-pointer self) info))

(cl:defmethod get-info2 ((self bt-generic6-dof-constraint) info)
  (btGeneric6DofConstraint_getInfo2 (ff-pointer self) info))

(cl:defmethod get-info2-non-virtual ((self bt-generic6-dof-constraint) info (transA bt-transform) (transB bt-transform) (linVelA bt-vector3) (linVelB bt-vector3) (angVelA bt-vector3) (angVelB bt-vector3))
  (btGeneric6DofConstraint_getInfo2NonVirtual (ff-pointer self) info transA transB linVelA linVelB angVelA angVelB))

(cl:defmethod update-rhs ((self bt-generic6-dof-constraint) (timeStep cl:number))
  (btGeneric6DofConstraint_updateRHS (ff-pointer self) timeStep))

(cl:defmethod get-axis ((self bt-generic6-dof-constraint) (axis_index cl:integer))
  (btGeneric6DofConstraint_getAxis (ff-pointer self) axis_index))

(cl:defmethod get-angle ((self bt-generic6-dof-constraint) (axis_index cl:integer))
  (btGeneric6DofConstraint_getAngle (ff-pointer self) axis_index))

(cl:defmethod get-relative-pivot-position ((self bt-generic6-dof-constraint) (axis_index cl:integer))
  (btGeneric6DofConstraint_getRelativePivotPosition (ff-pointer self) axis_index))

(cl:defmethod set-frames ((self bt-generic6-dof-constraint) (frameA bt-transform) (frameB bt-transform))
  (btGeneric6DofConstraint_setFrames (ff-pointer self) frameA frameB))

(cl:defmethod test-angular-limit-motor ((self bt-generic6-dof-constraint) (axis_index cl:integer))
  (btGeneric6DofConstraint_testAngularLimitMotor (ff-pointer self) axis_index))

(cl:defmethod set-linear-lower-limit ((self bt-generic6-dof-constraint) (linearLower bt-vector3))
  (btGeneric6DofConstraint_setLinearLowerLimit (ff-pointer self) linearLower))

(cl:defmethod get-linear-lower-limit ((self bt-generic6-dof-constraint) (linearLower bt-vector3))
  (btGeneric6DofConstraint_getLinearLowerLimit (ff-pointer self) linearLower))

(cl:defmethod set-linear-upper-limit ((self bt-generic6-dof-constraint) (linearUpper bt-vector3))
  (btGeneric6DofConstraint_setLinearUpperLimit (ff-pointer self) linearUpper))

(cl:defmethod get-linear-upper-limit ((self bt-generic6-dof-constraint) (linearUpper bt-vector3))
  (btGeneric6DofConstraint_getLinearUpperLimit (ff-pointer self) linearUpper))

(cl:defmethod set-angular-lower-limit ((self bt-generic6-dof-constraint) (angularLower bt-vector3))
  (btGeneric6DofConstraint_setAngularLowerLimit (ff-pointer self) angularLower))

(cl:defmethod get-angular-lower-limit ((self bt-generic6-dof-constraint) (angularLower bt-vector3))
  (btGeneric6DofConstraint_getAngularLowerLimit (ff-pointer self) angularLower))

(cl:defmethod set-angular-upper-limit ((self bt-generic6-dof-constraint) (angularUpper bt-vector3))
  (btGeneric6DofConstraint_setAngularUpperLimit (ff-pointer self) angularUpper))

(cl:defmethod get-angular-upper-limit ((self bt-generic6-dof-constraint) (angularUpper bt-vector3))
  (btGeneric6DofConstraint_getAngularUpperLimit (ff-pointer self) angularUpper))

(cl:defmethod get-rotational-limit-motor ((self bt-generic6-dof-constraint) (index cl:integer))
  (btGeneric6DofConstraint_getRotationalLimitMotor (ff-pointer self) index))

(cl:defmethod get-translational-limit-motor ((self bt-generic6-dof-constraint))
  (btGeneric6DofConstraint_getTranslationalLimitMotor (ff-pointer self)))

(cl:defmethod set-limit ((self bt-generic6-dof-constraint) (axis cl:integer) (lo cl:number) (hi cl:number))
  (btGeneric6DofConstraint_setLimit (ff-pointer self) axis lo hi))

(cl:defmethod is-limited ((self bt-generic6-dof-constraint) (limitIndex cl:integer))
  (btGeneric6DofConstraint_isLimited (ff-pointer self) limitIndex))

(cl:defmethod calc-anchor-pos ((self bt-generic6-dof-constraint))
  (btGeneric6DofConstraint_calcAnchorPos (ff-pointer self)))

(cl:defmethod get-limit-motor-info2 ((self bt-generic6-dof-constraint) (limot bt-rotational-limit-motor) (transA bt-transform) (transB bt-transform) (linVelA bt-vector3) (linVelB bt-vector3) (angVelA bt-vector3) (angVelB bt-vector3) info (row cl:integer) (ax1 bt-vector3) (rotational cl:integer) (rotAllowed cl:integer))
  (btGeneric6DofConstraint_get_limit_motor_info2 (ff-pointer self) limot transA transB linVelA linVelB angVelA angVelB info row ax1 rotational rotAllowed))

(cl:defmethod get-limit-motor-info2 ((self bt-generic6-dof-constraint) (limot bt-rotational-limit-motor) (transA bt-transform) (transB bt-transform) (linVelA bt-vector3) (linVelB bt-vector3) (angVelA bt-vector3) (angVelB bt-vector3) info (row cl:integer) (ax1 bt-vector3) (rotational cl:integer))
  (btGeneric6DofConstraint_get_limit_motor_info2 (ff-pointer self) limot transA transB linVelA linVelB angVelA angVelB info row ax1 rotational))

(cl:defmethod get-use-frame-offset ((self bt-generic6-dof-constraint))
  (btGeneric6DofConstraint_getUseFrameOffset (ff-pointer self)))

(cl:defmethod set-use-frame-offset ((self bt-generic6-dof-constraint) (frameOffsetOnOff t))
  (btGeneric6DofConstraint_setUseFrameOffset (ff-pointer self) frameOffsetOnOff))

(cl:defmethod set-param ((self bt-generic6-dof-constraint) (num cl:integer) (value cl:number) (axis cl:integer))
  (btGeneric6DofConstraint_setParam (ff-pointer self) num value axis))

(cl:defmethod set-param ((self bt-generic6-dof-constraint) (num cl:integer) (value cl:number))
  (btGeneric6DofConstraint_setParam (ff-pointer self) num value))

(cl:defmethod get-param ((self bt-generic6-dof-constraint) (num cl:integer) (axis cl:integer))
  (btGeneric6DofConstraint_getParam (ff-pointer self) num axis))

(cl:defmethod get-param ((self bt-generic6-dof-constraint) (num cl:integer))
  (btGeneric6DofConstraint_getParam (ff-pointer self) num))

(cl:defmethod set-axis ((self bt-generic6-dof-constraint) (axis1 bt-vector3) (axis2 bt-vector3))
  (btGeneric6DofConstraint_setAxis (ff-pointer self) axis1 axis2))

(cl:defmethod calculate-serialize-buffer-size ((self bt-generic6-dof-constraint))
  (btGeneric6DofConstraint_calculateSerializeBufferSize (ff-pointer self)))

(cl:defmethod serialize ((self bt-generic6-dof-constraint) dataBuffer (serializer bt-serializer))
  (btGeneric6DofConstraint_serialize (ff-pointer self) dataBuffer serializer))


(cl:defclass bt-generic6-dof-constraint-data()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-generic6-dof-constraint-data) &key)
  (setf (slot-value obj 'ff-pointer) (new_btGeneric6DofConstraintData)))


(cl:defclass bt-slider-constraint(btTypedConstraint)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-slider-constraint) &key (rbA bt-rigid-body) (rbB bt-rigid-body) (frameInA bt-transform) (frameInB bt-transform) (useLinearReferenceFrameA t))
  (setf (slot-value obj 'ff-pointer) (new_btSliderConstraint rbA rbB frameInA frameInB useLinearReferenceFrameA)))

(cl:defmethod initialize-instance :after ((obj bt-slider-constraint) &key (rbB bt-rigid-body) (frameInB bt-transform) (useLinearReferenceFrameA t))
  (setf (slot-value obj 'ff-pointer) (new_btSliderConstraint rbB frameInB useLinearReferenceFrameA)))

(cl:defmethod get-info1 ((self bt-slider-constraint) info)
  (btSliderConstraint_getInfo1 (ff-pointer self) info))

(cl:defmethod get-info1-non-virtual ((self bt-slider-constraint) info)
  (btSliderConstraint_getInfo1NonVirtual (ff-pointer self) info))

(cl:defmethod get-info2 ((self bt-slider-constraint) info)
  (btSliderConstraint_getInfo2 (ff-pointer self) info))

(cl:defmethod get-info2-non-virtual ((self bt-slider-constraint) info (transA bt-transform) (transB bt-transform) (linVelA bt-vector3) (linVelB bt-vector3) (rbAinvMass cl:number) (rbBinvMass cl:number))
  (btSliderConstraint_getInfo2NonVirtual (ff-pointer self) info transA transB linVelA linVelB rbAinvMass rbBinvMass))

(cl:defmethod get-rigid-body-a ((self bt-slider-constraint))
  (btSliderConstraint_getRigidBodyA (ff-pointer self)))

(cl:defmethod get-rigid-body-b ((self bt-slider-constraint))
  (btSliderConstraint_getRigidBodyB (ff-pointer self)))

(cl:defmethod get-calculated-transform-a ((self bt-slider-constraint))
  (btSliderConstraint_getCalculatedTransformA (ff-pointer self)))

(cl:defmethod get-calculated-transform-b ((self bt-slider-constraint))
  (btSliderConstraint_getCalculatedTransformB (ff-pointer self)))

(cl:defmethod get-frame-offset-a ((self bt-slider-constraint))
  (btSliderConstraint_getFrameOffsetA (ff-pointer self)))

(cl:defmethod get-frame-offset-b ((self bt-slider-constraint))
  (btSliderConstraint_getFrameOffsetB (ff-pointer self)))

(cl:defmethod get-frame-offset-a ((self bt-slider-constraint))
  (btSliderConstraint_getFrameOffsetA (ff-pointer self)))

(cl:defmethod get-frame-offset-b ((self bt-slider-constraint))
  (btSliderConstraint_getFrameOffsetB (ff-pointer self)))

(cl:defmethod get-lower-lin-limit ((self bt-slider-constraint))
  (btSliderConstraint_getLowerLinLimit (ff-pointer self)))

(cl:defmethod set-lower-lin-limit ((self bt-slider-constraint) (lowerLimit cl:number))
  (btSliderConstraint_setLowerLinLimit (ff-pointer self) lowerLimit))

(cl:defmethod get-upper-lin-limit ((self bt-slider-constraint))
  (btSliderConstraint_getUpperLinLimit (ff-pointer self)))

(cl:defmethod set-upper-lin-limit ((self bt-slider-constraint) (upperLimit cl:number))
  (btSliderConstraint_setUpperLinLimit (ff-pointer self) upperLimit))

(cl:defmethod get-lower-ang-limit ((self bt-slider-constraint))
  (btSliderConstraint_getLowerAngLimit (ff-pointer self)))

(cl:defmethod set-lower-ang-limit ((self bt-slider-constraint) (lowerLimit cl:number))
  (btSliderConstraint_setLowerAngLimit (ff-pointer self) lowerLimit))

(cl:defmethod get-upper-ang-limit ((self bt-slider-constraint))
  (btSliderConstraint_getUpperAngLimit (ff-pointer self)))

(cl:defmethod set-upper-ang-limit ((self bt-slider-constraint) (upperLimit cl:number))
  (btSliderConstraint_setUpperAngLimit (ff-pointer self) upperLimit))

(cl:defmethod get-use-linear-reference-frame-a ((self bt-slider-constraint))
  (btSliderConstraint_getUseLinearReferenceFrameA (ff-pointer self)))

(cl:defmethod get-softness-dir-lin ((self bt-slider-constraint))
  (btSliderConstraint_getSoftnessDirLin (ff-pointer self)))

(cl:defmethod get-restitution-dir-lin ((self bt-slider-constraint))
  (btSliderConstraint_getRestitutionDirLin (ff-pointer self)))

(cl:defmethod get-damping-dir-lin ((self bt-slider-constraint))
  (btSliderConstraint_getDampingDirLin (ff-pointer self)))

(cl:defmethod get-softness-dir-ang ((self bt-slider-constraint))
  (btSliderConstraint_getSoftnessDirAng (ff-pointer self)))

(cl:defmethod get-restitution-dir-ang ((self bt-slider-constraint))
  (btSliderConstraint_getRestitutionDirAng (ff-pointer self)))

(cl:defmethod get-damping-dir-ang ((self bt-slider-constraint))
  (btSliderConstraint_getDampingDirAng (ff-pointer self)))

(cl:defmethod get-softness-lim-lin ((self bt-slider-constraint))
  (btSliderConstraint_getSoftnessLimLin (ff-pointer self)))

(cl:defmethod get-restitution-lim-lin ((self bt-slider-constraint))
  (btSliderConstraint_getRestitutionLimLin (ff-pointer self)))

(cl:defmethod get-damping-lim-lin ((self bt-slider-constraint))
  (btSliderConstraint_getDampingLimLin (ff-pointer self)))

(cl:defmethod get-softness-lim-ang ((self bt-slider-constraint))
  (btSliderConstraint_getSoftnessLimAng (ff-pointer self)))

(cl:defmethod get-restitution-lim-ang ((self bt-slider-constraint))
  (btSliderConstraint_getRestitutionLimAng (ff-pointer self)))

(cl:defmethod get-damping-lim-ang ((self bt-slider-constraint))
  (btSliderConstraint_getDampingLimAng (ff-pointer self)))

(cl:defmethod get-softness-ortho-lin ((self bt-slider-constraint))
  (btSliderConstraint_getSoftnessOrthoLin (ff-pointer self)))

(cl:defmethod get-restitution-ortho-lin ((self bt-slider-constraint))
  (btSliderConstraint_getRestitutionOrthoLin (ff-pointer self)))

(cl:defmethod get-damping-ortho-lin ((self bt-slider-constraint))
  (btSliderConstraint_getDampingOrthoLin (ff-pointer self)))

(cl:defmethod get-softness-ortho-ang ((self bt-slider-constraint))
  (btSliderConstraint_getSoftnessOrthoAng (ff-pointer self)))

(cl:defmethod get-restitution-ortho-ang ((self bt-slider-constraint))
  (btSliderConstraint_getRestitutionOrthoAng (ff-pointer self)))

(cl:defmethod get-damping-ortho-ang ((self bt-slider-constraint))
  (btSliderConstraint_getDampingOrthoAng (ff-pointer self)))

(cl:defmethod set-softness-dir-lin ((self bt-slider-constraint) (softnessDirLin cl:number))
  (btSliderConstraint_setSoftnessDirLin (ff-pointer self) softnessDirLin))

(cl:defmethod set-restitution-dir-lin ((self bt-slider-constraint) (restitutionDirLin cl:number))
  (btSliderConstraint_setRestitutionDirLin (ff-pointer self) restitutionDirLin))

(cl:defmethod set-damping-dir-lin ((self bt-slider-constraint) (dampingDirLin cl:number))
  (btSliderConstraint_setDampingDirLin (ff-pointer self) dampingDirLin))

(cl:defmethod set-softness-dir-ang ((self bt-slider-constraint) (softnessDirAng cl:number))
  (btSliderConstraint_setSoftnessDirAng (ff-pointer self) softnessDirAng))

(cl:defmethod set-restitution-dir-ang ((self bt-slider-constraint) (restitutionDirAng cl:number))
  (btSliderConstraint_setRestitutionDirAng (ff-pointer self) restitutionDirAng))

(cl:defmethod set-damping-dir-ang ((self bt-slider-constraint) (dampingDirAng cl:number))
  (btSliderConstraint_setDampingDirAng (ff-pointer self) dampingDirAng))

(cl:defmethod set-softness-lim-lin ((self bt-slider-constraint) (softnessLimLin cl:number))
  (btSliderConstraint_setSoftnessLimLin (ff-pointer self) softnessLimLin))

(cl:defmethod set-restitution-lim-lin ((self bt-slider-constraint) (restitutionLimLin cl:number))
  (btSliderConstraint_setRestitutionLimLin (ff-pointer self) restitutionLimLin))

(cl:defmethod set-damping-lim-lin ((self bt-slider-constraint) (dampingLimLin cl:number))
  (btSliderConstraint_setDampingLimLin (ff-pointer self) dampingLimLin))

(cl:defmethod set-softness-lim-ang ((self bt-slider-constraint) (softnessLimAng cl:number))
  (btSliderConstraint_setSoftnessLimAng (ff-pointer self) softnessLimAng))

(cl:defmethod set-restitution-lim-ang ((self bt-slider-constraint) (restitutionLimAng cl:number))
  (btSliderConstraint_setRestitutionLimAng (ff-pointer self) restitutionLimAng))

(cl:defmethod set-damping-lim-ang ((self bt-slider-constraint) (dampingLimAng cl:number))
  (btSliderConstraint_setDampingLimAng (ff-pointer self) dampingLimAng))

(cl:defmethod set-softness-ortho-lin ((self bt-slider-constraint) (softnessOrthoLin cl:number))
  (btSliderConstraint_setSoftnessOrthoLin (ff-pointer self) softnessOrthoLin))

(cl:defmethod set-restitution-ortho-lin ((self bt-slider-constraint) (restitutionOrthoLin cl:number))
  (btSliderConstraint_setRestitutionOrthoLin (ff-pointer self) restitutionOrthoLin))

(cl:defmethod set-damping-ortho-lin ((self bt-slider-constraint) (dampingOrthoLin cl:number))
  (btSliderConstraint_setDampingOrthoLin (ff-pointer self) dampingOrthoLin))

(cl:defmethod set-softness-ortho-ang ((self bt-slider-constraint) (softnessOrthoAng cl:number))
  (btSliderConstraint_setSoftnessOrthoAng (ff-pointer self) softnessOrthoAng))

(cl:defmethod set-restitution-ortho-ang ((self bt-slider-constraint) (restitutionOrthoAng cl:number))
  (btSliderConstraint_setRestitutionOrthoAng (ff-pointer self) restitutionOrthoAng))

(cl:defmethod set-damping-ortho-ang ((self bt-slider-constraint) (dampingOrthoAng cl:number))
  (btSliderConstraint_setDampingOrthoAng (ff-pointer self) dampingOrthoAng))

(cl:defmethod set-powered-lin-motor ((self bt-slider-constraint) (onOff t))
  (btSliderConstraint_setPoweredLinMotor (ff-pointer self) onOff))

(cl:defmethod get-powered-lin-motor ((self bt-slider-constraint))
  (btSliderConstraint_getPoweredLinMotor (ff-pointer self)))

(cl:defmethod set-target-lin-motor-velocity ((self bt-slider-constraint) (targetLinMotorVelocity cl:number))
  (btSliderConstraint_setTargetLinMotorVelocity (ff-pointer self) targetLinMotorVelocity))

(cl:defmethod get-target-lin-motor-velocity ((self bt-slider-constraint))
  (btSliderConstraint_getTargetLinMotorVelocity (ff-pointer self)))

(cl:defmethod set-max-lin-motor-force ((self bt-slider-constraint) (maxLinMotorForce cl:number))
  (btSliderConstraint_setMaxLinMotorForce (ff-pointer self) maxLinMotorForce))

(cl:defmethod get-max-lin-motor-force ((self bt-slider-constraint))
  (btSliderConstraint_getMaxLinMotorForce (ff-pointer self)))

(cl:defmethod set-powered-ang-motor ((self bt-slider-constraint) (onOff t))
  (btSliderConstraint_setPoweredAngMotor (ff-pointer self) onOff))

(cl:defmethod get-powered-ang-motor ((self bt-slider-constraint))
  (btSliderConstraint_getPoweredAngMotor (ff-pointer self)))

(cl:defmethod set-target-ang-motor-velocity ((self bt-slider-constraint) (targetAngMotorVelocity cl:number))
  (btSliderConstraint_setTargetAngMotorVelocity (ff-pointer self) targetAngMotorVelocity))

(cl:defmethod get-target-ang-motor-velocity ((self bt-slider-constraint))
  (btSliderConstraint_getTargetAngMotorVelocity (ff-pointer self)))

(cl:defmethod set-max-ang-motor-force ((self bt-slider-constraint) (maxAngMotorForce cl:number))
  (btSliderConstraint_setMaxAngMotorForce (ff-pointer self) maxAngMotorForce))

(cl:defmethod get-max-ang-motor-force ((self bt-slider-constraint))
  (btSliderConstraint_getMaxAngMotorForce (ff-pointer self)))

(cl:defmethod get-linear-pos ((self bt-slider-constraint))
  (btSliderConstraint_getLinearPos (ff-pointer self)))

(cl:defmethod get-angular-pos ((self bt-slider-constraint))
  (btSliderConstraint_getAngularPos (ff-pointer self)))

(cl:defmethod get-solve-lin-limit ((self bt-slider-constraint))
  (btSliderConstraint_getSolveLinLimit (ff-pointer self)))

(cl:defmethod get-lin-depth ((self bt-slider-constraint))
  (btSliderConstraint_getLinDepth (ff-pointer self)))

(cl:defmethod get-solve-ang-limit ((self bt-slider-constraint))
  (btSliderConstraint_getSolveAngLimit (ff-pointer self)))

(cl:defmethod get-ang-depth ((self bt-slider-constraint))
  (btSliderConstraint_getAngDepth (ff-pointer self)))

(cl:defmethod calculate-transforms ((self bt-slider-constraint) (transA bt-transform) (transB bt-transform))
  (btSliderConstraint_calculateTransforms (ff-pointer self) transA transB))

(cl:defmethod test-lin-limits ((self bt-slider-constraint))
  (btSliderConstraint_testLinLimits (ff-pointer self)))

(cl:defmethod test-ang-limits ((self bt-slider-constraint))
  (btSliderConstraint_testAngLimits (ff-pointer self)))

(cl:defmethod get-ancor-in-a ((self bt-slider-constraint))
  (btSliderConstraint_getAncorInA (ff-pointer self)))

(cl:defmethod get-ancor-in-b ((self bt-slider-constraint))
  (btSliderConstraint_getAncorInB (ff-pointer self)))

(cl:defmethod get-use-frame-offset ((self bt-slider-constraint))
  (btSliderConstraint_getUseFrameOffset (ff-pointer self)))

(cl:defmethod set-use-frame-offset ((self bt-slider-constraint) (frameOffsetOnOff t))
  (btSliderConstraint_setUseFrameOffset (ff-pointer self) frameOffsetOnOff))

(cl:defmethod set-frames ((self bt-slider-constraint) (frameA bt-transform) (frameB bt-transform))
  (btSliderConstraint_setFrames (ff-pointer self) frameA frameB))

(cl:defmethod set-param ((self bt-slider-constraint) (num cl:integer) (value cl:number) (axis cl:integer))
  (btSliderConstraint_setParam (ff-pointer self) num value axis))

(cl:defmethod set-param ((self bt-slider-constraint) (num cl:integer) (value cl:number))
  (btSliderConstraint_setParam (ff-pointer self) num value))

(cl:defmethod get-param ((self bt-slider-constraint) (num cl:integer) (axis cl:integer))
  (btSliderConstraint_getParam (ff-pointer self) num axis))

(cl:defmethod get-param ((self bt-slider-constraint) (num cl:integer))
  (btSliderConstraint_getParam (ff-pointer self) num))

(cl:defmethod calculate-serialize-buffer-size ((self bt-slider-constraint))
  (btSliderConstraint_calculateSerializeBufferSize (ff-pointer self)))

(cl:defmethod serialize ((self bt-slider-constraint) dataBuffer (serializer bt-serializer))
  (btSliderConstraint_serialize (ff-pointer self) dataBuffer serializer))


(cl:defclass bt-slider-constraint-data()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-slider-constraint-data) &key)
  (setf (slot-value obj 'ff-pointer) (new_btSliderConstraintData)))


(cl:defclass bt-generic6-dof-spring-constraint(btGeneric6DofConstraint)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-generic6-dof-spring-constraint) &key (rbA bt-rigid-body) (rbB bt-rigid-body) (frameInA bt-transform) (frameInB bt-transform) (useLinearReferenceFrameA t))
  (setf (slot-value obj 'ff-pointer) (new_btGeneric6DofSpringConstraint rbA rbB frameInA frameInB useLinearReferenceFrameA)))

(cl:defmethod enable-spring ((self bt-generic6-dof-spring-constraint) (index cl:integer) (onOff t))
  (btGeneric6DofSpringConstraint_enableSpring (ff-pointer self) index onOff))

(cl:defmethod set-stiffness ((self bt-generic6-dof-spring-constraint) (index cl:integer) (stiffness cl:number))
  (btGeneric6DofSpringConstraint_setStiffness (ff-pointer self) index stiffness))

(cl:defmethod set-damping ((self bt-generic6-dof-spring-constraint) (index cl:integer) (damping cl:number))
  (btGeneric6DofSpringConstraint_setDamping (ff-pointer self) index damping))

(cl:defmethod set-equilibrium-point ((self bt-generic6-dof-spring-constraint))
  (btGeneric6DofSpringConstraint_setEquilibriumPoint (ff-pointer self)))

(cl:defmethod set-equilibrium-point ((self bt-generic6-dof-spring-constraint) (index cl:integer))
  (btGeneric6DofSpringConstraint_setEquilibriumPoint (ff-pointer self) index))

(cl:defmethod set-equilibrium-point ((self bt-generic6-dof-spring-constraint) (index cl:integer) (val cl:number))
  (btGeneric6DofSpringConstraint_setEquilibriumPoint (ff-pointer self) index val))

(cl:defmethod set-axis ((self bt-generic6-dof-spring-constraint) (axis1 bt-vector3) (axis2 bt-vector3))
  (btGeneric6DofSpringConstraint_setAxis (ff-pointer self) axis1 axis2))

(cl:defmethod get-info2 ((self bt-generic6-dof-spring-constraint) info)
  (btGeneric6DofSpringConstraint_getInfo2 (ff-pointer self) info))

(cl:defmethod calculate-serialize-buffer-size ((self bt-generic6-dof-spring-constraint))
  (btGeneric6DofSpringConstraint_calculateSerializeBufferSize (ff-pointer self)))

(cl:defmethod serialize ((self bt-generic6-dof-spring-constraint) dataBuffer (serializer bt-serializer))
  (btGeneric6DofSpringConstraint_serialize (ff-pointer self) dataBuffer serializer))


(cl:defclass bt-generic6-dof-spring-constraint-data()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-generic6-dof-spring-constraint-data) &key)
  (setf (slot-value obj 'ff-pointer) (new_btGeneric6DofSpringConstraintData)))


(cl:defclass bt-universal-constraint(btGeneric6DofConstraint)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-universal-constraint) &key (rbA bt-rigid-body) (rbB bt-rigid-body) (anchor bt-vector3) (axis1 bt-vector3) (axis2 bt-vector3))
  (setf (slot-value obj 'ff-pointer) (new_btUniversalConstraint rbA rbB anchor axis1 axis2)))

(cl:defmethod get-anchor ((self bt-universal-constraint))
  (btUniversalConstraint_getAnchor (ff-pointer self)))

(cl:defmethod get-anchor2 ((self bt-universal-constraint))
  (btUniversalConstraint_getAnchor2 (ff-pointer self)))

(cl:defmethod get-axis1 ((self bt-universal-constraint))
  (btUniversalConstraint_getAxis1 (ff-pointer self)))

(cl:defmethod get-axis2 ((self bt-universal-constraint))
  (btUniversalConstraint_getAxis2 (ff-pointer self)))

(cl:defmethod get-angle1 ((self bt-universal-constraint))
  (btUniversalConstraint_getAngle1 (ff-pointer self)))

(cl:defmethod get-angle2 ((self bt-universal-constraint))
  (btUniversalConstraint_getAngle2 (ff-pointer self)))

(cl:defmethod set-upper-limit ((self bt-universal-constraint) (ang1max cl:number) (ang2max cl:number))
  (btUniversalConstraint_setUpperLimit (ff-pointer self) ang1max ang2max))

(cl:defmethod set-lower-limit ((self bt-universal-constraint) (ang1min cl:number) (ang2min cl:number))
  (btUniversalConstraint_setLowerLimit (ff-pointer self) ang1min ang2min))

(cl:defmethod set-axis ((self bt-universal-constraint) (axis1 bt-vector3) (axis2 bt-vector3))
  (btUniversalConstraint_setAxis (ff-pointer self) axis1 axis2))


(cl:defclass bt-hinge2-constraint(btGeneric6DofSpringConstraint)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-hinge2-constraint) &key (rbA bt-rigid-body) (rbB bt-rigid-body) (anchor bt-vector3) (axis1 bt-vector3) (axis2 bt-vector3))
  (setf (slot-value obj 'ff-pointer) (new_btHinge2Constraint rbA rbB anchor axis1 axis2)))

(cl:defmethod get-anchor ((self bt-hinge2-constraint))
  (btHinge2Constraint_getAnchor (ff-pointer self)))

(cl:defmethod get-anchor2 ((self bt-hinge2-constraint))
  (btHinge2Constraint_getAnchor2 (ff-pointer self)))

(cl:defmethod get-axis1 ((self bt-hinge2-constraint))
  (btHinge2Constraint_getAxis1 (ff-pointer self)))

(cl:defmethod get-axis2 ((self bt-hinge2-constraint))
  (btHinge2Constraint_getAxis2 (ff-pointer self)))

(cl:defmethod get-angle1 ((self bt-hinge2-constraint))
  (btHinge2Constraint_getAngle1 (ff-pointer self)))

(cl:defmethod get-angle2 ((self bt-hinge2-constraint))
  (btHinge2Constraint_getAngle2 (ff-pointer self)))

(cl:defmethod set-upper-limit ((self bt-hinge2-constraint) (ang1max cl:number))
  (btHinge2Constraint_setUpperLimit (ff-pointer self) ang1max))

(cl:defmethod set-lower-limit ((self bt-hinge2-constraint) (ang1min cl:number))
  (btHinge2Constraint_setLowerLimit (ff-pointer self) ang1min))


(cl:defclass bt-constraint-solver()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod prepare-solve ((self bt-constraint-solver) (arg1 cl:integer) (arg2 cl:integer))
  (btConstraintSolver_prepareSolve (ff-pointer self) arg1 arg2))

(cl:defmethod solve-group ((self bt-constraint-solver) bodies (numBodies cl:integer) manifold (numManifolds cl:integer) constraints (numConstraints cl:integer) (info bt-contact-solver-info) (debugDrawer bt-idebug-draw) (stackAlloc bt-stack-alloc) (dispatcher bt-dispatcher))
  (btConstraintSolver_solveGroup (ff-pointer self) bodies numBodies manifold numManifolds constraints numConstraints info debugDrawer stackAlloc dispatcher))

(cl:defmethod all-solved ((self bt-constraint-solver) (arg1 bt-contact-solver-info) (arg2 bt-idebug-draw) (arg3 bt-stack-alloc))
  (btConstraintSolver_allSolved (ff-pointer self) arg1 arg2 arg3))

(cl:defmethod reset ((self bt-constraint-solver))
  (btConstraintSolver_reset (ff-pointer self)))


(cl:defclass bt-contact-constraint(btTypedConstraint)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod set-contact-manifold ((self bt-contact-constraint) (contactManifold bt-persistent-manifold))
  (btContactConstraint_setContactManifold (ff-pointer self) contactManifold))

(cl:defmethod get-contact-manifold ((self bt-contact-constraint))
  (btContactConstraint_getContactManifold (ff-pointer self)))

(cl:defmethod get-contact-manifold ((self bt-contact-constraint))
  (btContactConstraint_getContactManifold (ff-pointer self)))

(cl:defmethod get-info1 ((self bt-contact-constraint) info)
  (btContactConstraint_getInfo1 (ff-pointer self) info))

(cl:defmethod get-info2 ((self bt-contact-constraint) info)
  (btContactConstraint_getInfo2 (ff-pointer self) info))

(cl:defmethod build-jacobian ((self bt-contact-constraint))
  (btContactConstraint_buildJacobian (ff-pointer self)))


(cl:defclass bt-sequential-impulse-constraint-solver(btConstraintSolver)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-sequential-impulse-constraint-solver) &key)
  (setf (slot-value obj 'ff-pointer) (new_btSequentialImpulseConstraintSolver)))

(cl:defmethod solve-group ((self bt-sequential-impulse-constraint-solver) bodies (numBodies cl:integer) manifold (numManifolds cl:integer) constraints (numConstraints cl:integer) (info bt-contact-solver-info) (debugDrawer bt-idebug-draw) (stackAlloc bt-stack-alloc) (dispatcher bt-dispatcher))
  (btSequentialImpulseConstraintSolver_solveGroup (ff-pointer self) bodies numBodies manifold numManifolds constraints numConstraints info debugDrawer stackAlloc dispatcher))

(cl:defmethod reset ((self bt-sequential-impulse-constraint-solver))
  (btSequentialImpulseConstraintSolver_reset (ff-pointer self)))

(cl:defmethod bt-rand2 ((self bt-sequential-impulse-constraint-solver))
  (btSequentialImpulseConstraintSolver_btRand2 (ff-pointer self)))

(cl:defmethod bt-rand-int2 ((self bt-sequential-impulse-constraint-solver) (n cl:integer))
  (btSequentialImpulseConstraintSolver_btRandInt2 (ff-pointer self) n))

(cl:defmethod set-rand-seed ((self bt-sequential-impulse-constraint-solver) (seed cl:integer))
  (btSequentialImpulseConstraintSolver_setRandSeed (ff-pointer self) seed))

(cl:defmethod get-rand-seed ((self bt-sequential-impulse-constraint-solver))
  (btSequentialImpulseConstraintSolver_getRandSeed (ff-pointer self)))


(cl:defclass bt-action-interface()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod update-action ((self bt-action-interface) (collisionWorld bt-collision-world) (deltaTimeStep cl:number))
  (btActionInterface_updateAction (ff-pointer self) collisionWorld deltaTimeStep))

(cl:defmethod debug-draw ((self bt-action-interface) (debugDrawer bt-idebug-draw))
  (btActionInterface_debugDraw (ff-pointer self) debugDrawer))


(cl:defclass bt-raycast-vehicle(btActionInterface)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-raycast-vehicle) &key tuning (chassis bt-rigid-body) raycaster)
  (setf (slot-value obj 'ff-pointer) (new_btRaycastVehicle tuning chassis raycaster)))

(cl:defmethod update-action ((self bt-raycast-vehicle) (collisionWorld bt-collision-world) (step cl:number))
  (btRaycastVehicle_updateAction (ff-pointer self) collisionWorld step))

(cl:defmethod debug-draw ((self bt-raycast-vehicle) (debugDrawer bt-idebug-draw))
  (btRaycastVehicle_debugDraw (ff-pointer self) debugDrawer))

(cl:defmethod get-chassis-world-transform ((self bt-raycast-vehicle))
  (btRaycastVehicle_getChassisWorldTransform (ff-pointer self)))

(cl:defmethod ray-cast ((self bt-raycast-vehicle) wheel)
  (btRaycastVehicle_rayCast (ff-pointer self) wheel))

(cl:defmethod update-vehicle ((self bt-raycast-vehicle) (step cl:number))
  (btRaycastVehicle_updateVehicle (ff-pointer self) step))

(cl:defmethod reset-suspension ((self bt-raycast-vehicle))
  (btRaycastVehicle_resetSuspension (ff-pointer self)))

(cl:defmethod get-steering-value ((self bt-raycast-vehicle) (wheel cl:integer))
  (btRaycastVehicle_getSteeringValue (ff-pointer self) wheel))

(cl:defmethod set-steering-value ((self bt-raycast-vehicle) (steering cl:number) (wheel cl:integer))
  (btRaycastVehicle_setSteeringValue (ff-pointer self) steering wheel))

(cl:defmethod apply-engine-force ((self bt-raycast-vehicle) (force cl:number) (wheel cl:integer))
  (btRaycastVehicle_applyEngineForce (ff-pointer self) force wheel))

(cl:defmethod get-wheel-transform-ws ((self bt-raycast-vehicle) (wheelIndex cl:integer))
  (btRaycastVehicle_getWheelTransformWS (ff-pointer self) wheelIndex))

(cl:defmethod update-wheel-transform ((self bt-raycast-vehicle) (wheelIndex cl:integer) (interpolatedTransform t))
  (btRaycastVehicle_updateWheelTransform (ff-pointer self) wheelIndex interpolatedTransform))

(cl:defmethod update-wheel-transform ((self bt-raycast-vehicle) (wheelIndex cl:integer))
  (btRaycastVehicle_updateWheelTransform (ff-pointer self) wheelIndex))

(cl:defmethod add-wheel ((self bt-raycast-vehicle) (connectionPointCS0 bt-vector3) (wheelDirectionCS0 bt-vector3) (wheelAxleCS bt-vector3) (suspensionRestLength cl:number) (wheelRadius cl:number) tuning (isFrontWheel t))
  (btRaycastVehicle_addWheel (ff-pointer self) connectionPointCS0 wheelDirectionCS0 wheelAxleCS suspensionRestLength wheelRadius tuning isFrontWheel))

(cl:defmethod get-num-wheels ((self bt-raycast-vehicle))
  (btRaycastVehicle_getNumWheels (ff-pointer self)))

(cl:defmethod (cl:setf m_wheelInfo) (arg0 (obj bt-raycast-vehicle))
  (btRaycastVehicle_m_wheelInfo_set (ff-pointer obj) arg0))

(cl:defmethod m_wheelInfo ((obj bt-raycast-vehicle))
  (btRaycastVehicle_m_wheelInfo_get (ff-pointer obj)))

(cl:defmethod get-wheel-info ((self bt-raycast-vehicle) (index cl:integer))
  (btRaycastVehicle_getWheelInfo (ff-pointer self) index))

(cl:defmethod get-wheel-info ((self bt-raycast-vehicle) (index cl:integer))
  (btRaycastVehicle_getWheelInfo (ff-pointer self) index))

(cl:defmethod update-wheel-transforms-ws ((self bt-raycast-vehicle) wheel (interpolatedTransform t))
  (btRaycastVehicle_updateWheelTransformsWS (ff-pointer self) wheel interpolatedTransform))

(cl:defmethod update-wheel-transforms-ws ((self bt-raycast-vehicle) wheel)
  (btRaycastVehicle_updateWheelTransformsWS (ff-pointer self) wheel))

(cl:defmethod set-brake ((self bt-raycast-vehicle) (brake cl:number) (wheelIndex cl:integer))
  (btRaycastVehicle_setBrake (ff-pointer self) brake wheelIndex))

(cl:defmethod set-pitch-control ((self bt-raycast-vehicle) (pitch cl:number))
  (btRaycastVehicle_setPitchControl (ff-pointer self) pitch))

(cl:defmethod update-suspension ((self bt-raycast-vehicle) (deltaTime cl:number))
  (btRaycastVehicle_updateSuspension (ff-pointer self) deltaTime))

(cl:defmethod update-friction ((self bt-raycast-vehicle) (timeStep cl:number))
  (btRaycastVehicle_updateFriction (ff-pointer self) timeStep))

(cl:defmethod get-rigid-body ((self bt-raycast-vehicle))
  (btRaycastVehicle_getRigidBody (ff-pointer self)))

(cl:defmethod get-rigid-body ((self bt-raycast-vehicle))
  (btRaycastVehicle_getRigidBody (ff-pointer self)))

(cl:defmethod get-right-axis ((self bt-raycast-vehicle))
  (btRaycastVehicle_getRightAxis (ff-pointer self)))

(cl:defmethod get-up-axis ((self bt-raycast-vehicle))
  (btRaycastVehicle_getUpAxis (ff-pointer self)))

(cl:defmethod get-forward-axis ((self bt-raycast-vehicle))
  (btRaycastVehicle_getForwardAxis (ff-pointer self)))

(cl:defmethod get-forward-vector ((self bt-raycast-vehicle))
  (btRaycastVehicle_getForwardVector (ff-pointer self)))

(cl:defmethod get-current-speed-km-hour ((self bt-raycast-vehicle))
  (btRaycastVehicle_getCurrentSpeedKmHour (ff-pointer self)))

(cl:defmethod set-coordinate-system ((self bt-raycast-vehicle) (rightIndex cl:integer) (upIndex cl:integer) (forwardIndex cl:integer))
  (btRaycastVehicle_setCoordinateSystem (ff-pointer self) rightIndex upIndex forwardIndex))

(cl:defmethod get-user-constraint-type ((self bt-raycast-vehicle))
  (btRaycastVehicle_getUserConstraintType (ff-pointer self)))

(cl:defmethod set-user-constraint-type ((self bt-raycast-vehicle) (userConstraintType cl:integer))
  (btRaycastVehicle_setUserConstraintType (ff-pointer self) userConstraintType))

(cl:defmethod set-user-constraint-id ((self bt-raycast-vehicle) (uid cl:integer))
  (btRaycastVehicle_setUserConstraintId (ff-pointer self) uid))

(cl:defmethod get-user-constraint-id ((self bt-raycast-vehicle))
  (btRaycastVehicle_getUserConstraintId (ff-pointer self)))


(cl:defclass bt-default-vehicle-raycaster(btVehicleRaycaster)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj bt-default-vehicle-raycaster) &key (world bt-dynamics-world))
  (setf (slot-value obj 'ff-pointer) (new_btDefaultVehicleRaycaster world)))

(cl:defmethod cast-ray ((self bt-default-vehicle-raycaster) (from bt-vector3) (to bt-vector3) result)
  (btDefaultVehicleRaycaster_castRay (ff-pointer self) from to result))

