# GIL Study

Context: during a job interview, I wasn't able to talk about ruby GIL. So this repository is some kind of practice to understand GIL and the different Ruby solutions to bypass it.

## Documentation

Relevant links:

* https://workingwithruby.com/wwrt/gil/
* https://tihandev.com/concurrency-vs-parallelism-and-gil/

## Planned items

I'll check my knowledge about:

* Process (sure fire)
* Thread (rather confident in this one)
* Fiber (never used)
* Ractor (need to dig into it)

I'll need to benchmark execution speed and memory footprint 

## Testing function

We need a function able to melt CPU, and could benefit from parallelization. π seems a good candidate, especially through [Monte Carlo](https://en.wikipedia.org/wiki/Monte_Carlo_method#Overview) method (statistical approach of π value).
I started to write my old methods and while searching a way to count CPUs core in native ruby, I rediscovered [Parallel gem](https://github.com/grosser/parallel) which evolved a lot since my last visit: now it proposes methods via Process, Thread and Ractor. Let's use it instead of inventing the wheel again.
