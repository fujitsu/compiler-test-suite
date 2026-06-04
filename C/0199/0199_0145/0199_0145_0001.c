#include <stdlib.h>
extern signed char v1 (unsigned int, unsigned int);
extern signed char (*v2) (unsigned int, unsigned int);
signed short v3 (unsigned char, signed short, signed char);
signed short (*v4) (unsigned char, signed short, signed char) = v3;
extern signed int v5 (signed int, unsigned int);
extern signed int (*v6) (signed int, unsigned int);
extern unsigned int v7 (unsigned int, signed int, signed short, signed int);
extern unsigned int (*v8) (unsigned int, signed int, signed short, signed int);
extern signed int v9 (signed int, signed short, unsigned char);
extern signed int (*v10) (signed int, signed short, unsigned char);
extern void v11 (void);
extern void (*v12) (void);
extern signed char v13 (void);
extern signed char (*v14) (void);
extern signed int v15 (signed int, unsigned char, unsigned short);
extern signed int (*v16) (signed int, unsigned char, unsigned short);
extern signed char v17 (signed int, unsigned int, unsigned short, unsigned char);
extern signed char (*v18) (signed int, unsigned int, unsigned short, unsigned char);
extern unsigned short v19 (unsigned char);
extern unsigned short (*v20) (unsigned char);
extern void v21 (signed short, unsigned short, unsigned char, unsigned int);
extern void (*v22) (signed short, unsigned short, unsigned char, unsigned int);
extern unsigned short v23 (unsigned char, signed char);
extern unsigned short (*v24) (unsigned char, signed char);
signed short v27 (unsigned int, unsigned int);
signed short (*v28) (unsigned int, unsigned int) = v27;
extern unsigned int v29 (unsigned int, signed int, signed char, signed short);
extern unsigned int (*v30) (unsigned int, signed int, signed char, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed int v52 = -3;
unsigned int v51 = 4U;
unsigned short v50 = 6;

signed short v27 (unsigned int v53, unsigned int v54)
{
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
{
for (;;) {
unsigned int v57 = 7U;
signed char v56 = -4;
signed char v55 = 3;
trace++;
switch (trace)
{
case 5: 
{
unsigned char v58;
signed char v59;
unsigned short v60;
v58 = 2 - 2;
v59 = v55 + v56;
v60 = v23 (v58, v59);
history[history_index++] = (int)v60;
}
break;
case 7: 
return 0;
default: abort ();
}
}
}
}

signed short v3 (unsigned char v61, signed short v62, signed char v63)
{
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
{
for (;;) {
signed int v66 = 0;
unsigned int v65 = 0U;
unsigned int v64 = 3U;
trace++;
switch (trace)
{
case 9: 
return v62;
default: abort ();
}
}
}
}
