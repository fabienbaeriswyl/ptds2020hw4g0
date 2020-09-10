#include <Rcpp.h>
using namespace Rcpp;


// [[Rcpp::export]]
LogicalVector is_inside(NumericMatrix points){

  LogicalVector inside(points.nrow());

  for(int i(1); i<=points.nrow();i++){

    double rad;
    rad = pow(points(i-1, 0),2)+pow(points(i-1, 1),2);

    if (rad < 1){
      inside(i-1)=true;
    }else{
      inside(i-1)=false;
    }
  }

  return inside;
}
