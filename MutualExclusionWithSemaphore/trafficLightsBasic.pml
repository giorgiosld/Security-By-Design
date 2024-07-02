/* Independent Traffic lights */

active proctype L1() {
red:
do
  :: (true) -> green: skip
od
}

active proctype L2() {
red:
do
  :: (true) -> green: skip
od
}

ltl starvationFreedom1 {[] (L1@green  -> <> L1@red)}
