dvc add plate_photos/*
dvc commit -y
dvc push

git add *
git commit -m "${1}"
git push

rsync -avu -e ssh experiment3.html plate_photos susi@5.1.93.49:public_html/tests/
