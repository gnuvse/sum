; Cуммирование текста вер. 0.0.1
; 
;
; Версия 0.0.1a
; Добавлена обработка запятой в тексте ; строка 14
; TO-DO
; 1. Добавить поддержку выбора для разных Фаз
;	 Запись и вывод для всех фаз
; 
;


(defun c:sum()
	(setq flag 1)
	(setq sum 0)
	; Фаза
	(setq LEAD (getstring "Введите обозначение фазы (A, B, C)"))
	(while (/= flag 0)

		(setq txt (vla-get-TextString (vlax-ename->vla-object (car (entsel "\nУкажите значение: ")))))
		(princ "\n")
	
		; Обработка запятой
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