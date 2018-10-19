depend ramen/lib/v2d.f

: posxz@  pos >x @  pos >z @ ; 
: posxz!  pos >z !  pos >x ! ; 

: tilt-towards  ( obj dist -- n ) >r  's pos >y @  pos >y @ -  r> swap angle negate ;
: pan-towards  ( obj -- n ) >{ posxz@ }  posxz@  2-  swap angle ;

: orbitted ( obj ang dist -- x y )  vec  rot >{ posxz@ }  2+ ;
: situate  ( obj ang dist -- )   orbitted  posxz! ;