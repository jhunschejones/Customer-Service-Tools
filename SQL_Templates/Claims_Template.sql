SELECT DISTINCT TOP 200														
CLCL.CLCL_ID AS 'Claim ID',														
CLCL.CLCL_CUR_STS as 'Claim Status',														
CLCL.CLCL_LOW_SVC_DT as 'DOS',														
CLCL.CLCL_PAID_DT AS 'Paid',														
CDML.CDML_DISALL_EXCD AS 'Ex Code',														
EXCD.EXCD_SHORT_TEXT AS 'Ex Description',														
CLCL.CLCL_RECD_DT AS 'Recieved'																							
														
FROM CMCV_CLCL_BASE AS CLCL														
INNER JOIN CMCV_CDML_BASE AS CDML ON CDML.CLCL_ID = CLCL.CLCL_ID														
INNER JOIN CMCV_EXCD_BASE AS EXCD ON EXCD.EXCD_ID = CDML.CDML_DISALL_EXCD														
INNER JOIN CMCV_PDDS_BASE AS PDDS ON CLCL.PDPD_ID = PDDS.PDPD_ID														
INNER JOIN CMCV_PRPR_BASE AS PRPR ON CLCL.PRPR_ID = PRPR.PRPR_ID														
INNER JOIN CMCV_GRGR_BASE AS GRGR ON CLCL.GRGR_CK = GRGR.GRGR_CK														
INNER JOIN CMCV_CLST_BASE AS CLST ON CLCL.CLCL_ID = CLST.CLCL_ID														
INNER JOIN CMCV_SBSB_BASE AS SBSB ON SBSB.SBSB_CK = CLCL.SBSB_CK														
INNER JOIN CMCV_MEME_BASE AS MEME ON MEME.MEME_CK = CLCL.MEME_CK														
INNER JOIN CMCV_MEPE_BASE AS MEPE ON MEPE.MEME_CK = MEME.MEME_CK														
INNER JOIN CMCV_SBAD_BASE AS SBAD ON SBAD.SBSB_CK = SBSB.SBSB_CK														
INNER JOIN CMCV_IDCD_BASE AS IDCD ON CDML.IDCD_ID = IDCD.IDCD_ID														
LEFT OUTER JOIN #VAL_CODES ON PDDS.PDDS_MCTR_VAL2 = #VAL_CODES.[Value Code] AND PDDS.PDDS_MCTR_BCAT = #VAL_CODES.[BCAT]														
																												
														
WHERE														
CDML.SESE_ID IN ('TYPE OF SERVICE')								--Fill in red information, comment out lines for criteria you are not using 					
AND CDML.PSCD_ID IN ('PLACE OF SERVICE')														
AND CDML.CDML_DISALL_EXCD IN ('DENIAL CODE, DENIAL CODE')														
AND CDML.IPCD_ID IN ('PROCEDURE CODE' , 'PROCEDURE CODE')														
AND CDML.IDCD_ID IN ('DIAGNOSIS CODE','DIAGNOSIS CODE')														
AND CLCL.CLCL_RECD_DT <= '04/01/17'														
AND CLCL.CLCL_LOW_SVC_DT >= '01/01/2017'														
AND CLCL.CLCL_HIGH_SVC_DT <= '04/01/2017'														
AND GRGR.GRGR_ID = 'GROUP NUMBER'														
AND CDML.CDML_ALLOW >= '0'														
AND CLCL.CLCL_CUR_STS = '02'														
AND CLST.CLST_MCTR_REAS =  'PEND'														
AND PRPR.PRPR_ID =  'FACETS PROVIDER ID'														
AND PRPR.MCTN_ID = 'PROVIDER TIN'														
AND CLCL.CLCL_NTWK_IND = 'O'												
AND #VAL_CODES.[Value Code] = '4 DIGIT Alpha-numeric VAL CODE'														
AND #VAL_CODES.[Long Code] = '7 DIGIT VAL CODE'														
AND #VAL_CODES.[CL Team] = 'Commercial/ASO/Public Programs'  --sellect one		
