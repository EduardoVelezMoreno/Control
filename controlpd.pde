float x1 = 200,x2 = 0,T =0.07,u=0, kp=3,b=0.3,m=1,kd=4;
float eanterior = 0,eactual=0;
float ref = 0;
void setup(){
  size(800,600);
  ref = width/2;
}

void draw(){
  eactual = ref - x1;
  u = kp*eactual+kd*(eactual-eanterior)/T;
  eanterior = eactual;
  x1 = x2*T+x1;
  x2 = ((-b*x2/m)+(u/m))*T+x2;
  background(0);
  fill(255);
  rect(ref,height/2,3,3);
  rect(x1,height/2,50,30);
  ellipse(10+x1,height/2+30,20,20);
  ellipse(40+x1,height/2+30,20,20);
}
