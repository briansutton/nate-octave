# *Numerical Analysis: Theory and Experiments*<br/>Brian Sutton

[*Numerical Analysis: Theory and Experiments*](http://bookstore.siam.org/ot161/) is a textbook on numerical analysis. Numerical methods are designed and implemented, and then they are analyzed through a combination of mathematical theory and numerical experimentation. Problem areas include interpolation, integration, linear systems, zero finding, and differential equations. Chebyshev methods are used early and often.

This package is a library of numerical routines that accompany the book.

## MATLAB versus Octave

The [original package](https://github.com/briansutton/nate) contains MATLAB codes. This is a port to Octave.

## Installation

The library is installed as follows:
1. Download the package [nate-octave.tar.gz](https://raw.githubusercontent.com/briansutton/nate-octave/master/nate-octave.tar.gz).
1. Start Octave.
1. Install the package:
   ```
   octave> pkg install nate-octave.tar.gz
   ```
   The full pathname must be provided if `nate-octave.tar.gz` is not located in the current working directory.
1. Load the package:
   ```
   octave> pkg load nate-octave
   ```
1. Verify that the library routines are available as follows:
   ```
   octave> nate
   Numerical Analysis: Theory and Experiments
   ```
1. Set the numeric format to `long`:
   ```
   octave> format long
   ```

Steps 4-6 must be repeated each time Octave is restarted.

## Demonstration

The following code computes and plots the arctan function.
```
>> g = @(x) 1/(1+x^2); a = 0; b = 10;
>> fa = 0;
>> qs = samplecheb(g,[a b],60);
>> ps = antiderivcheb(fa,qs,[a b]);
>> p = interpcheb(ps,[a b]);
>> newfig;
>> plotfun(p,[a b],'displayname','p');
>> ylim([0 pi/2]);
>> legend('location','southeast');
```
![arctan](https://github.com/briansutton/nate/raw/master/arctan.png "arctan")
