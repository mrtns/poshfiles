#   W h y   s l e e p   w h e n   y o u   c a n   P o w e r - N a p ?  
 S e t - A l i a s   P o w e r - N a p   s l e e p  
  
 #   T h i n k i n g   a   s i m p l e   u n i x   a l i a s   p r o f i l e   w o u l d   b e   a n   i n t e r e s t i n g   p r o j e c t  
 f i l t e r   g r e p ( $ k e y w o r d )   {   i f   (   ( $ _   |   O u t - S t r i n g )   - l i k e   " * $ k e y w o r d * " )   {   $ _   }   }  
  
 #   p r o m p t   c u s t o m i z a t i o n   c o m i n g   f r o m   t h e   f o l l o w i n g :  
 #   h t t p : / / w i n t e r d o m . c o m / 2 0 0 8 / 0 8 / m y p o w e r s h e l l p r o m p t  
 f u n c t i o n   s h o r t e n - p a t h ( [ s t r i n g ]   $ p a t h )   {    
       $ l o c   =   $ p a t h . R e p l a c e ( $ H O M E ,   ' ~ ' )    
       #   r e m o v e   p r e f i x   f o r   U N C   p a t h s    
       $ l o c   =   $ l o c   - r e p l a c e   ' ^ [ ^ : ] + : : ' ,   ' '    
       #   m a k e   p a t h   s h o r t e r   l i k e   t a b s   i n   V i m ,    
       #   h a n d l e   p a t h s   s t a r t i n g   w i t h   \ \   a n d   .   c o r r e c t l y    
       r e t u r n   ( $ l o c   - r e p l a c e   ' \ \ ( \ . ? ) ( [ ^ \ \ ] ) [ ^ \ \ ] * ( ? = \ \ ) ' , ' \ $ 1 $ 2 ' )    
 }  
  
  
 f u n c t i o n   p r o m p t   {    
       #   o u r   t h e m e    
       $ c d e l i m   =   [ C o n s o l e C o l o r ] : : D a r k C y a n    
       $ c h o s t   =   [ C o n s o l e C o l o r ] : : G r e e n    
       $ c l o c   =   [ C o n s o l e C o l o r ] : : C y a n    
  
       w r i t e - h o s t   " $ ( [ c h a r ] 0 x 0 A 7 )   "   - n   - f   $ c l o c    
       w r i t e - h o s t   ( [ n e t . d n s ] : : G e t H o s t N a m e ( ) )   - n   - f   $ c h o s t    
       w r i t e - h o s t   '   { '   - n   - f   $ c d e l i m    
       w r i t e - h o s t   ( s h o r t e n - p a t h   ( p w d ) . P a t h )   - n   - f   $ c l o c    
       w r i t e - h o s t   ' } '   - n   - f   $ c d e l i m    
       r e t u r n   '   '    
 }  
  
 