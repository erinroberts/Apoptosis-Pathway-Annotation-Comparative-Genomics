#!/bin/bash
#SBATCH -t 1:00:00
#SBATCH --nodes 1
#SBATCH --mail-user=erin_roberts@uri.edu
#SBATCH -o /data3/marine_diseases_lab/erin/CV_apop_clustalw_tcoffee/tcoffee_default_Apo3_output
#SBATCH -e /data3/marine_diseases_lab/erin/CV_apop_clustalw_tcoffee/tcoffee_default_Apo3_error
#SBATCH -D /data3/marine_diseases_lab/erin/CV_apop_clustalw_tcoffee

#-D submits the start path
echo "START $(date)"

module load tcoffee/11.00.ddc7141-foss-2016b
F=/data3/marine_diseases_lab/erin/CV_apop_clustalw_tcoffee

t_coffee -seq $F/Apo3_conserved_tophit.fasta -outfile $F/Apo3_conserved_tophit_combined.out

echo "STOP $(date)"
