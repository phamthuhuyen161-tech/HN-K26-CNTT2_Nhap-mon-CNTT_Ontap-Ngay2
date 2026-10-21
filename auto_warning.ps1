# script: auto_warning.ps1
# tac gia: pham thu huyen
# ngay tao: 21/10/2026
write-host "dang loc canh bao thanh toan..."
"=== canh bao thanh toan ===" | out-file logs/wwarning_report.txt
get-content logs/payment.log | select-string "warning"| out-file logs/warning_report.txt -append
write-host "hoan thien!"