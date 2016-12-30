
Follow instructions on [https://github.com/spragunr/deep_q_rl](https://github.com/spragunr/deep_q_rl)

put this files in /deep_q_rl/ folder 

Use the scripts `run_cpudqn.py` 


`$ python run_cpudqn.py --rom breakout`  Run simple Deep Q-learning for atari games.

Either script will store output files in a folder prefixed with the
name of the ROM.  Pickled version of the network objects are stored
after every epoch.  The file `results.csv` will contain the testing
output.  You can plot the progress by executing `plot_results.py`:

`$ python plot_results.py breakout_05-28-17-09_0p00025_0p99/results.csv`

After training completes, you can watch the network play using the 
`ale_run_watch.py` script: 

`$ python ale_run_watch.py breakout_05-28-17-09_0p00025_0p99/network_file_99.pkl`
