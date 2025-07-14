# 🚀 EC2 EBS Volume: Mount & Make Permanent (Linux)

This guide shows how to:
✅ Find disks  
✅ Format  
✅ Mount  
✅ Make mount permanent

---

## 🛠 Step 1: Show attached disks

```bash
lsblk
sudo fdisk -l
🧱 Step 2: Format new disk
Example device: /dev/xvdf

bash
Copy
Edit
sudo mkfs -t ext4 /dev/xvdf
📂 Step 3: Create mount point
bash
Copy
Edit
sudo mkdir /data
🔗 Step 4: Mount the disk
bash
Copy
Edit
sudo mount /dev/xvdf /data
✅ After this, use /data like any normal folder.

📜 Step 5: Verify mount
bash
Copy
Edit
df -h
mount
♻️ Step 6: Make mount permanent
Find UUID
bash
Copy
Edit
sudo blkid
Example output:

pgsql
Copy
Edit
/dev/xvdf: UUID="e5d9e8c4-1234-5678-9abc-def012345678" TYPE="ext4"
Edit /etc/fstab
bash
Copy
Edit
sudo nano /etc/fstab
Add this line at the end (replace UUID with your own):

ini
Copy
Edit
UUID=e5d9e8c4-1234-5678-9abc-def012345678   /data   ext4    defaults,nofail   0   2
Test before reboot
bash
Copy
Edit
sudo mount -a
df -h
✅ On reboot, Linux will auto‑mount this disk to /data.

✅ Now your disk is permanently mounted!
📌 Tip
Use lsblk and df -h often to check which disks and mounts are active.

⚡ Bonus: Explanation for students
Block-level storage → like getting an empty hard disk (you decide what files to store)

Mount → connecting disk to a folder so Linux can use it

fstab → config file that tells Linux to auto‑mount disks on boot

✏️ Author
Vishal Tinani

yaml
Copy
Edit

---

✅ Replace `https://github.com/your-github-username` with your actual GitHub profile URL.  
✅ Commit this as `README.md` to your repo.

---

If you'd like,  
📍 I can also create:
- `mount-ebs.sh` script file  
- Diagram  
- Or push this to GitHub for you  

Just say **yes!** 🚀