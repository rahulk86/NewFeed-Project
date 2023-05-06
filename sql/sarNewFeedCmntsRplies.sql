SELECT 
  MAX(tabnewfeedrply.tcbNewFeedRplyActv)                      AS svbNewFeedRplyActv,
  MAX(tabnewfeedrply.tcbNewFeedRplyActv)                      AS sviNewFeedRplyId,
  MAX(tabnewfeedrply.tcsNewFeedRplyTxt)                       AS svsNewFeedRplyTxt,
  MAX(tabnewfeedrply.tcdNewFeedRplyDate)                      AS svdNewFeedRplyDate,
           
  MAX(tabnewfeedRplyuser.tciNewfeedUserActv)                  AS sviNewfeedRplyUserActv,
  MAX(tabnewfeedRplyuser.tciNewfeedUserId)                    AS sviNewfeedRplyUserId,
  MAX(tabnewfeedRplyuser.tcsNewfeedUserName)                  AS svsNewfeedRplyUserName,
  MAX(tabnewfeedRplyuser.tcsNewfeedUserEmail)                 AS svsNewfeedRplyUserEmail,
  MAX(tabnewfeedRplyuser.tcsNewfeedUserPaswrd)                AS svsNewfeedRplyUserPaswrd
  
  
FROM 
    tabnewfeedrply  
        INNER JOIN tabnewfeeduser AS tabnewfeedRplyuser ON
        tabnewfeedRplyuser.tciNewfeedUserId = tabnewfeedrply.tciNewfeedUserId 
WHERE
  tabnewfeedrply.tciNewFeedCmntId = <rviNewFeedCmntId>  AND
  tabnewfeedrply.tcbNewFeedRplyActv = '1' 
ORDER BY
  svdNewFeedRplyDate DESC;
      