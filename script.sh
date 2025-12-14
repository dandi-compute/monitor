cd /orcd/data/dandi/001/all-dandi-compute/monitor
squeue --format="%.10i    %15P    %40j    %10u    %.2t    %.10M    %.6D    %.4C    %20R" --me | ./squeue_to_md_table.sh > README.md
git add README.md
git commit --message "update" | true
git push
