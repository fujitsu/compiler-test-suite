#include <stdlib.h>
extern unsigned short v1 (signed short);
extern unsigned short (*v2) (signed short);
extern signed short v3 (signed char, signed char, unsigned char);
extern signed short (*v4) (signed char, signed char, unsigned char);
signed int v5 (unsigned char, unsigned int, unsigned char, unsigned short);
signed int (*v6) (unsigned char, unsigned int, unsigned char, unsigned short) = v5;
extern unsigned short v7 (unsigned short);
extern unsigned short (*v8) (unsigned short);
extern signed int v9 (void);
extern signed int (*v10) (void);
extern void v11 (void);
extern void (*v12) (void);
extern unsigned char v13 (unsigned short, unsigned short, signed char);
extern unsigned char (*v14) (unsigned short, unsigned short, signed char);
signed char v15 (unsigned short);
signed char (*v16) (unsigned short) = v15;
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern unsigned char v19 (signed short, signed short, unsigned int, unsigned char);
extern unsigned char (*v20) (signed short, signed short, unsigned int, unsigned char);
extern signed char v21 (signed short, unsigned char, unsigned short);
extern signed char (*v22) (signed short, unsigned char, unsigned short);
extern void v23 (signed char, signed int);
extern void (*v24) (signed char, signed int);
extern unsigned short v25 (signed char, signed int, signed short, unsigned int);
extern unsigned short (*v26) (signed char, signed int, signed short, unsigned int);
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v49 = -3;
signed char v48 = 2;
signed int v47 = 3;

signed char v15 (unsigned short v50)
{
history[history_index++] = (int)v50;
{
for (;;) {
signed int v53 = 3;
signed char v52 = 1;
unsigned short v51 = 1;
trace++;
switch (trace)
{
case 5: 
{
v29 ();
}
break;
case 7: 
{
v29 ();
}
break;
case 13: 
return v52;
default: abort ();
}
}
}
}

signed int v5 (unsigned char v54, unsigned int v55, unsigned char v56, unsigned short v57)
{
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
{
for (;;) {
unsigned char v60 = 5;
unsigned short v59 = 2;
signed char v58 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
