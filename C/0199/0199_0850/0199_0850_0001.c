#include <stdlib.h>
extern void v1 (unsigned char, unsigned char);
extern void (*v2) (unsigned char, unsigned char);
extern signed short v3 (unsigned short);
extern signed short (*v4) (unsigned short);
extern signed short v5 (signed char, signed int);
extern signed short (*v6) (signed char, signed int);
extern signed int v7 (unsigned short, unsigned int);
extern signed int (*v8) (unsigned short, unsigned int);
extern signed char v9 (signed int, unsigned int);
extern signed char (*v10) (signed int, unsigned int);
extern signed short v11 (unsigned short, unsigned int);
extern signed short (*v12) (unsigned short, unsigned int);
extern signed int v13 (signed short, signed int, unsigned short);
extern signed int (*v14) (signed short, signed int, unsigned short);
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
extern unsigned short v17 (signed char, signed short, unsigned char, unsigned int);
extern unsigned short (*v18) (signed char, signed short, unsigned char, unsigned int);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
signed short v21 (signed short, unsigned int, unsigned int, unsigned int);
signed short (*v22) (signed short, unsigned int, unsigned int, unsigned int) = v21;
extern unsigned int v23 (signed short, unsigned int, unsigned short);
extern unsigned int (*v24) (signed short, unsigned int, unsigned short);
extern signed char v25 (signed char);
extern signed char (*v26) (signed char);
extern unsigned int v27 (signed short, unsigned char, unsigned short, unsigned short);
extern unsigned int (*v28) (signed short, unsigned char, unsigned short, unsigned short);
extern unsigned short v29 (void);
extern unsigned short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v53 = -2;
unsigned short v52 = 6;
unsigned short v51 = 7;

signed short v21 (signed short v54, unsigned int v55, unsigned int v56, unsigned int v57)
{
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
{
for (;;) {
signed int v60 = -3;
unsigned int v59 = 3U;
unsigned int v58 = 5U;
trace++;
switch (trace)
{
case 2: 
return 0;
case 4: 
{
unsigned char v61;
v61 = v19 ();
history[history_index++] = (int)v61;
}
break;
case 6: 
{
signed char v62;
signed char v63;
v62 = 3 + 2;
v63 = v25 (v62);
history[history_index++] = (int)v63;
}
break;
case 8: 
return v54;
default: abort ();
}
}
}
}
