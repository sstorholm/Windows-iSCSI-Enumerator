foreach ($disk in (Get-Disk | ?{$_.BusType -Eq "iSCSI"})){

    $DriveLetter = ($disk | Get-Partition | ?{$_.Type -eq "Basic"}).DriveLetter
    $ISCSI = $disk | Get-IscsiSession
    [pscustomobject]@{
        DiskNumber=$disk.Number; 
        DriveLetter=$DriveLetter; 
        TargetNodeAddress=$ISCSI.TargetNodeAddress;
        TargetSideIdentifier=$ISCSI.TargetSideIdentifier;
        Size=$disk.Size;
    }
  
}
