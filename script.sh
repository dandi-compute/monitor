cd /orcd/data/dandi/001/all-dandi-compute/monitor
squeue --format="%.20i    %25P    %40j    %.2t    %.10M    %.6D    %.4C    %20R" --me | ./squeue_to_md_table.sh > README.md
git add README.md
git commit --message "update" | true
git push

# CRON
# */2 * * * * flock -n /orcd/data/dandi/001/flocks/dandi_compute_monitor.lock bash /orcd/data/dandi/001/all-dandi-compute/monitor/script.sh
