# GoDot-JitterStutter-Test
micro project for godot to see the differences in timings and why stuttering happens

## what is does
it draws 3 bars where the left half ist solid white, the right half black
and then endless-scroll it left-side, one full cycle has a duration of 10sec
 
* the first bar is rendered by a canvas-shader where the left shift is calculated using the global shader TIME var
* the secound and third bar is a sprite inside of a ParallaxBackground/Layer construct
* the secound bar is processed on _process(delta) using delta var (only working with vsync)
* the third bar is processed on _physics_process(delta) using delta var

## what you should see in a perfect world
in a perfect world you should only see one solid white bar moving left
everything should be perfect synced
 
## what you should see in real world
first bar runs smoothed an next to perfect in time
secound and third bar runs out of sync, but the engine try's to fix timing (differently)
if you watch long enougth you maybe see how it slows down and the extremly speeds up (wrongly)
 
## more informations what we are talking about
very good description from croteam cto 
https://medium.com/@alen.ladavac/the-elusive-frame-timing-168f899aec92

## license
```
**BSD-2-Clause**
Copyright 2019 YveIce

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
```
