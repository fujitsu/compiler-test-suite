#include <stdlib.h>
signed short v1 (unsigned short, unsigned short);
signed short (*v2) (unsigned short, unsigned short) = v1;
extern signed char v3 (signed int, unsigned int, signed short);
extern signed char (*v4) (signed int, unsigned int, signed short);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern void v7 (signed char, signed short, unsigned short, unsigned short);
extern void (*v8) (signed char, signed short, unsigned short, unsigned short);
signed int v9 (signed short);
signed int (*v10) (signed short) = v9;
extern unsigned char v11 (signed short);
extern unsigned char (*v12) (signed short);
extern unsigned int v13 (signed int);
extern unsigned int (*v14) (signed int);
extern signed short v15 (signed char);
extern signed short (*v16) (signed char);
extern unsigned short v17 (unsigned char);
extern unsigned short (*v18) (unsigned char);
extern signed int v19 (unsigned int);
extern signed int (*v20) (unsigned int);
extern signed int v23 (void);
extern signed int (*v24) (void);
extern signed short v25 (void);
extern signed short (*v26) (void);
extern signed short v27 (void);
extern signed short (*v28) (void);
extern unsigned char v29 (unsigned char, signed short, signed char);
extern unsigned char (*v30) (unsigned char, signed short, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v58 = 2;
signed char v57 = -2;
signed int v56 = -3;

signed int v9 (signed short v59)
{
history[history_index++] = (int)v59;
{
for (;;) {
unsigned char v62 = 0;
signed char v61 = 0;
unsigned short v60 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (unsigned short v63, unsigned short v64)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
{
for (;;) {
signed int v67 = -2;
unsigned int v66 = 0U;
signed short v65 = 0;
trace++;
switch (trace)
{
case 0: 
{
signed short v68;
v68 = v27 ();
history[history_index++] = (int)v68;
}
break;
case 6: 
{
unsigned int v69;
v69 = v5 ();
history[history_index++] = (int)v69;
}
break;
case 12: 
return 1;
default: abort ();
}
}
}
}
