; C����������� ������ ���. 0.0.1
; 
;
; ������ 0.0.1a
; ��������� ��������� ������� � ������ ; ������ 14
; TO-DO
; 1. �������� ��������� ������ ��� ������ ���
;	 ������ � ����� ��� ���� ���
; 
;


(defun c:sum()
	(setq flag 1)
	(setq sum 0)
	; ����
	(setq LEAD (getstring "������� ����������� ���� (A, B, C)"))
	(while (/= flag 0)

		(setq txt (vla-get-TextString (vlax-ename->vla-object (car (entsel "\n������� ��������: ")))))
		(princ "\n")
	
		; ��������� �������
		(setq txt (vl-string-subst "." "," txt))
	
		(setq sum (+ sum (atof txt)))
		(princ LEAD)
		(princ " = ")
		(princ sum)
	)
	
	(princ LEAD)
	(princ " = ")
	(princ sum)
	
)