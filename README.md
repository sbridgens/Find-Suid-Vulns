# Find-Suid-Vulns

This script is useful in finding suid binaries that have the strcpy, strcat, sprintfs calls in them

Obviously not all binaries returned are vulnerable however any non system binaries most likely are....

output

```bash
strcpy     	 /bin/su                                            
strcpy     	 /bin/ntfs-3g                                       
strcat     	 /bin/ntfs-3g                                       
strcpy     	 /bin/fusermount                                    
strcat     	 /bin/fusermount                                    
strcpy     	 /usr/bin/procmail                                  
strcat     	 /usr/bin/procmail                                  
strcpy     	 /usr/bin/gpasswd                                   
strcpy     	 /usr/bin/chfn                                      
strcpy     	 /usr/bin/passwd                                    
strcpy     	 /usr/sbin/exim4                                    
strcat     	 /usr/sbin/exim4    
```
