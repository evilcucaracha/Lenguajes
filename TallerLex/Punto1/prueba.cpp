#include<iostream>
using namespace std;

int main(){
  string s="s";
  char c='s';
  string cs=c+"";
  cout << cs <<", " << c <<endl;
  bool b=false;

  if(s==cs)
    b=true;
  cout<<b <<endl;
}
