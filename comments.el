;;; comments.el --- Toggle comment in/out lines or regions in code
;;
;; Copyright (c) 2011 Bozhidar Batsov
;;
;; Author: Philipp Maluta <fil.the.ensoreus@gmail.com>
;; Version: 0.0.1
;; Keywords: convenience

;; This file is not part of GNU Emacs.

;;; Commentary:

;; This module is a handy tool for commenting the code lines in different languages 

;;; License:

;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License
;; as published by the Free Software Foundation; either version 3
;; of the License, or (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
;; Boston, MA 02110-1301, USA.

(setq c-lang-comment-line-symbol "//" )
(setq c-lang-comment-box-symbol-b "/*" )
(setq c-lang-comment-box-symbol-e "*/" )

(defun line-commented?()
  (eql (begining-of-line) c-lang-comment-line-symbol)
)

(defun box-commented?()
  (cond (search-forward c-lang-comment-box-e)))

(defun toggle-comment-out-in () 
"Toggle comment out the line or region in C-like languages"
  (if (line-commented?))
	(comment-single-line))
  (comment-box (region-beginning) (region-end))
)
