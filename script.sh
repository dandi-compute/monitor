squeue --format="%.10i    %15P    %40j    %10u    %.2t    %.10M    %.6D    %.4C    %20R" --me | ./test_script_3.sh > README.md
git add README.md
git commit --message "update" | true
git push
