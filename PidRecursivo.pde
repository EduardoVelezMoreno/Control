float x1 = 200,x2 = 0,T =0.07,uk=0, kp=3,b=0.3,m=1,kd=4,ki=1,uk1=0;
float ek = 0, ek1=0, ek2 =0;
float ref = 0;
float q0 = 0, q1 = 0, q2 = 0;
void setup(){
  size(800,600);
  ref = width/2;
  q0 = kp+kd/T+ki*T;
  q1 = -kp-2*kd/T;
  q2 = kd/T;
}

void draw(){
  ek = ref - x1;
  uk = uk1+q0*ek+q1*ek1+q2*ek2;
  uk1 = uk;
  ek2 = ek1;
  ek1 = ek;
  x1 = x2*T+x1;
  x2 = ((-b*x2/m)+(uk/m))*T+x2;
  background(0);
  fill(255);
  rect(ref,height/2,3,3);
  rect(x1,height/2,50,30);
  ellipse(10+x1,height/2+30,20,20);
  ellipse(40+x1,height/2+30,20,20);
}
