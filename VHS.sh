
echo "Running ffmpeg command..."
ffmpeg -i INPUT.mp4 -vf "tinterlace=4,curves=m='0/0 0.5/0.9':r='0/0 0.5/0.5 1/1':g='0/0 0.5/0.5 1/1':b='0/0 0.5/0.5 1/1':,eq=saturation=1.2,scale=480:360,smartblur=lr=2:ls=-1,noise=c0s=13:c0f=t+u,gblur=sigma=3:steps=1,unsharp=luma_msize_x=15:luma_msize_y=9:luma_amount=5.0:chroma_msize_x=7:chroma_msize_y=3:chroma_amount=-2,format=yuv422p" -af "highpass=f=50,lowpass=f=5000" OUTPUT.mp4
echo "ffmpeg command completed."
read -p "Press any key to continue..."

