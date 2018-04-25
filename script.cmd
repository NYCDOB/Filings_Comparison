cd c:\Filings_Comparison
cd c:\Filings_Comparison
date /t  
time /t  
@echo starting script  

git pull https://github.com/NYCDOB/Filings_Comparison.git gh-pages

del Antenna_Merge.html
del Curbcut_Merge.html
del Fence_Merge.html
del Plumbing_Merge.html
del Scaffold_Merge.html
del Shed_Merge.html
del Sign_Merge.html
del Sprinker_Merge.html
del Standpipe_Merge.html
del Elevators_Merge.html
del Electrical_Merge.html



git add "Antenna_Merge.html"
git add "Curbcut_Merge.html"
git add "Fence_Merge.html"
git add "Plumbing_Merge.html"
git add "Scaffold_Merge.html"
git add "Shed_Merge.html"
git add "Sign_Merge.html"
git add "Sprinker_Merge.html"
git add "Standpipe_Merge.html"
git add "Elevators_Merge.html"
git add "Electrical_Merge.html"
git commit -m "delete from script" 

@echo running R script
 c:\"Program Files"\R\R-3.4.2\bin\Rscript.exe script.R

@echo local repo commit  


git branch gh-pages  
git checkout -f gh-pages 
git status  


git add "Antenna_Merge.html"
git add "Curbcut_Merge.html"
git add "Fence_Merge.html"
git add "Plumbing_Merge.html"
git add "Scaffold_Merge.html"
git add "Shed_Merge.html"
git add "Sign_Merge.html"
git add "Sprinker_Merge.html"
git add "Standpipe_Merge.html"
git add "Elevators_Merge.html"
git add "Electrical_Merge.html"
git commit -m "commit from script"  
git push https://github.com/NYCDOB/Filings_Comparison.git gh-pages

date /t  
time /t   
@echo job done  
pause
