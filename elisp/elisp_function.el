; 常见的函数
(buffer-name)        ; 显示当前 buffer 的名字
(buffer-file-name)   ; 显示当前 buffer 完整路径
(current-buffer)     ; 显示当前 buffer
(other-buffer)       ; 显示前一个 buffer 的名字
(buffer-size)        ; 显示当前缓冲区的字符数
(point)              ; 表示从缓冲区开头到光标所在位置的字符数量
(point-min)          ; 返回当前缓冲区中 point 的最小允许值
(point-max)          ; 返回当前缓冲区的最大可访问位置 + 1

(interactive)        ; 在函数定义中设置为交互式，并且可以加入参数

; 常见的组合
(buffer-name (current-buffer))     ; 显示当前 buffer 的名字
(switch-to-buffer (other-buffer))  ; 跳转到上一个 buffer
(set-buffer "*scratch*")           ; 后台切换到 *scratch* 缓冲区， switch 相对显示，set 看不见

; 简单实战
(defun buffer-test()
  "简单的输出当前文件的一些内容"
  (interactive)
  (message "当前缓冲区：%s" (buffer-name) (point))
  (message "当前文件名：%s" (buffer-file-name))
  (message "当前文件字符数：%d，当前光标所在位置：%d" (point-max) (point)))

(defun test(n s)
  (interactive "n输入数字：\ns输入字符串：")
  (message "字符串是：%d" (* n p)))
