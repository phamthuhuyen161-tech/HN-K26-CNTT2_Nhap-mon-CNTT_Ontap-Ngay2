# Script: auto_warning.ps1
# Tac gia: Pham Thu Huyen
# Ngay tao: 21/10/2026
Write-host "Dang loc canh bao thanh toan..."
"=== CANH BAO THANH TOAN ===" > logs/wwarning_report.txt
Get-content logs/payment.log | select-string "warning" >> logs/warning_report.txt 
Write-host "Hoan Thien!"
