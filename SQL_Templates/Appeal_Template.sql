------------------------------
------------------------------
-- Week 1 Homework Example: --
------------------------------
------------------------------
SELECT TOP 1000 
APPEALS.APAP_ID AS 'Appeals',
PREAUTHS.UMUM_REF_ID AS 'Pre-Auths'


FROM [DATABASE].[dbo].[CMC_APLK_APP_LINK] AS LINKS
LEFT JOIN [dbo].[CMC_APAP_APPEALS] AS APPEALS ON APPEALS.APAP_ID = LINKS.APAP_ID
LEFT JOIN [dbo].[CMC_UMSV_SERVICES] AS PREAUTHS ON PREAUTHS.UMUM_REF_ID = LINKS.APLK_ID
WHERE APPEALS.APAP_PRPR_ID1 = 'PROVIDER ID' OR APPEALS.APAP_PRPR_ID2 = 'PROVIDER ID' OR APPEALS.APAP_PRPR_ID3 = 'PROVIDER ID' 




-------------------------------------------------------
-- Week 2 example 1, written in class with students: --
-------------------------------------------------------
-- Return the ID and MCTR Category for the top 100 ----
-- grievances in the appeals database -----------------
-------------------------------------------------------

SQL, without aliases:
SELECT TOP 100 
dbo.CMCV_APAP_BASE.APAP_ID, dbo.CMCV_APAP_BASE.APAP_MCTR_CAT
FROM dbo.CMCV_APAP_BASE
WHERE dbo.CMCV_APAP_BASE.APAP_MCTR_CAT = 'G'

SQL, with aliases (exact same query as above):
SELECT TOP 100 
Appeals.APAP_ID, Appeals.APAP_MCTR_CAT
FROM dbo.CMCV_APAP_BASE AS Appeals
WHERE Appeals.APAP_MCTR_CAT = 'G'



-------------------------------------------------------
-- Week 2 example 2, written in class with students: --
-------------------------------------------------------
-- Select top 100 grievances with the ID, member's ----
-- first name, and MCTR_CAT ---------------------------
-------------------------------------------------------

SELECT TOP 100
Appeals.APAP_ID,
Members.MEME_FIRST_NAME,
Appeals.APAP_MCTR_CAT

FROM dbo.CMCV_APAP_BASE AS Appeals
INNER JOIN [dbo].[CMCV_MEME_BASE] AS Members
ON Appeals.MEME_CK = Members.MEME_CK

WHERE Appeals.APAP_MCTR_CAT = 'G'
