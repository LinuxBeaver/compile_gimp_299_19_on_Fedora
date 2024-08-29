## Compile GIMP 2.99.19 master branch on Fedora Linux (tested on 38 and 39; and assumed to work on 40+)

Open **build-gimp.sh** and replace `~/gimp_directory/here` with the directory you want to compile GIMP in. Make sure the directory remains local in /home/ somewhere. In our example it will be /home/username/gimpnde/
Run **grab_gimp_gegl_babl.sh** which will grab gegl, babl and GIMP from GNOME's Gitlab
Run **build-gimp.sh** ; this should take time as it is compiling babl, gegl then GIMP. 
Place the file **launchgimp299.sh** in the directory you want GIMP to be installed in, open it and replace `~/muhdirhere/` with the directory you want GIMP you set above, in our example case /home/username/gimp/nde/. 
when updating run 
Run remove_prev_build_before_reupdating.sh to delete the previous gimp , gegl and babl before rerunning **grab_gimp_gegl_babl.sh** and **build-gimp.sh**



### In my example this is where GIMP is compiled

![image](https://github.com/user-attachments/assets/f46a4a4a-0f8b-4485-93d3-1313ef7a627c)


### In my example this is where GIMP is launched
![image](https://github.com/user-attachments/assets/c18e945a-e6ac-4a53-b980-3a9936780f25)


Now you can use GIMP 2.99.19 fresh outta Gitlab with the latest commits.  I've been doing this since Jan 2024, Credit goes to barefoot Liam for writing build-linux.sh, and credit goes to me for writing everything else. 

![image](https://github.com/user-attachments/assets/b6ec3efe-a05b-491e-b445-23da1d488ca6)
