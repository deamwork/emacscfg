;; show
(setq inhibit-startup-screen t);; close welcome screen
(setq column-number-mode t);; enable column mode
(show-paren-mode t);; ��ʾƥ������
(setq show-paren-style 'parentheses);; ��ʾƥ������
(setq visible-bell t)
(setq frame-title-format "%b");; set title
(auto-image-file-mode);; enable image view
(menu-bar-mode -1);; remove menu bar
;; it's said that it can control buffer's name, but look like not work
(setq uniquify-buffer-name-style 'forward)

;; backup
;; small-temporary-file-directory
(setq version-control t)
(setq delete-old-versions t)
(setq kept-new-versions 6)
(setq backup-directory-alist
      (list (cons "." (concat temporary-file-directory "backup"))))

;; others
(setq default-major-mode 'text-mode);; set default mode
(auto-compression-mode 1);; set compression mode
(pc-selection-mode);; use shift + [array] to select
(put 'dired-find-alternate-file 'disabled nil)
(transient-mark-mode t);; unknown
(fset 'yes-or-no-p 'y-or-n-p);; use y/n to anwser
;; ������ C-k ʱ��ͬʱɾ������
(setq-default kill-whole-line t)
(global-unset-key [?\C- ])
;; ֧��emacs���ⲿ�����ճ��
(setq x-select-enable-clipboard t)
;; Ĭ�Ͻ����ļ�ʹ��unix��ʽ��utf-8����
(setq default-buffer-file-coding-system 'utf-8-unix)

;; Ĭ�ϴ�abbrevģʽ������ʾ�Զ�����
(setq-default abbrev-mode t)
(setq save-abbrevs nil)

;; pythonģʽ
(setq python-indent 8)

;; cc-mode��Ĭ��ʹ��linux c�������8
(setq c-default-style "linux" c-basic-offset 8)
