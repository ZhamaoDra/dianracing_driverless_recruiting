;; Auto-generated. Do not edit!


(when (boundp 'wzm_1::multi)
  (if (not (find-package "WZM_1"))
    (make-package "WZM_1"))
  (shadow 'multi (find-package "WZM_1")))
(unless (find-package "WZM_1::MULTI")
  (make-package "WZM_1::MULTI"))
(unless (find-package "WZM_1::MULTIREQUEST")
  (make-package "WZM_1::MULTIREQUEST"))
(unless (find-package "WZM_1::MULTIRESPONSE")
  (make-package "WZM_1::MULTIRESPONSE"))

(in-package "ROS")





(defclass wzm_1::multiRequest
  :super ros::object
  :slots (_a _b ))

(defmethod wzm_1::multiRequest
  (:init
   (&key
    ((:a __a) 0)
    ((:b __b) 0)
    )
   (send-super :init)
   (setq _a (round __a))
   (setq _b (round __b))
   self)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:b
   (&optional __b)
   (if __b (setq _b __b)) _b)
  (:serialization-length
   ()
   (+
    ;; int64 _a
    8
    ;; int64 _b
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _a
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _a (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _a) (= (length (_a . bv)) 2)) ;; bignum
              (write-long (ash (elt (_a . bv) 0) 0) s)
              (write-long (ash (elt (_a . bv) 1) -1) s))
             ((and (class _a) (= (length (_a . bv)) 1)) ;; big1
              (write-long (elt (_a . bv) 0) s)
              (write-long (if (>= _a 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _a s)(write-long (if (>= _a 0) 0 #xffffffff) s)))
     ;; int64 _b
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _b (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _b) (= (length (_b . bv)) 2)) ;; bignum
              (write-long (ash (elt (_b . bv) 0) 0) s)
              (write-long (ash (elt (_b . bv) 1) -1) s))
             ((and (class _b) (= (length (_b . bv)) 1)) ;; big1
              (write-long (elt (_b . bv) 0) s)
              (write-long (if (>= _b 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _b s)(write-long (if (>= _b 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _a
#+(or :alpha :irix6 :x86_64)
      (setf _a (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _a (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _b
#+(or :alpha :irix6 :x86_64)
      (setf _b (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _b (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass wzm_1::multiResponse
  :super ros::object
  :slots (_m ))

(defmethod wzm_1::multiResponse
  (:init
   (&key
    ((:m __m) 0)
    )
   (send-super :init)
   (setq _m (round __m))
   self)
  (:m
   (&optional __m)
   (if __m (setq _m __m)) _m)
  (:serialization-length
   ()
   (+
    ;; int64 _m
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _m
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _m (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _m) (= (length (_m . bv)) 2)) ;; bignum
              (write-long (ash (elt (_m . bv) 0) 0) s)
              (write-long (ash (elt (_m . bv) 1) -1) s))
             ((and (class _m) (= (length (_m . bv)) 1)) ;; big1
              (write-long (elt (_m . bv) 0) s)
              (write-long (if (>= _m 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _m s)(write-long (if (>= _m 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _m
#+(or :alpha :irix6 :x86_64)
      (setf _m (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _m (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass wzm_1::multi
  :super ros::object
  :slots ())

(setf (get wzm_1::multi :md5sum-) "94ad1411057ad93d39d73409d0884011")
(setf (get wzm_1::multi :datatype-) "wzm_1/multi")
(setf (get wzm_1::multi :request) wzm_1::multiRequest)
(setf (get wzm_1::multi :response) wzm_1::multiResponse)

(defmethod wzm_1::multiRequest
  (:response () (instance wzm_1::multiResponse :init)))

(setf (get wzm_1::multiRequest :md5sum-) "94ad1411057ad93d39d73409d0884011")
(setf (get wzm_1::multiRequest :datatype-) "wzm_1/multiRequest")
(setf (get wzm_1::multiRequest :definition-)
      "int64 a
int64 b
---
int64 m

")

(setf (get wzm_1::multiResponse :md5sum-) "94ad1411057ad93d39d73409d0884011")
(setf (get wzm_1::multiResponse :datatype-) "wzm_1/multiResponse")
(setf (get wzm_1::multiResponse :definition-)
      "int64 a
int64 b
---
int64 m

")



(provide :wzm_1/multi "94ad1411057ad93d39d73409d0884011")


