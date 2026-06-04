#include <stdlib.h>
extern void v1 (unsigned int);
extern void (*v2) (unsigned int);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
extern unsigned int v7 (signed char, unsigned int);
extern unsigned int (*v8) (signed char, unsigned int);
unsigned int v9 (unsigned short, signed char, signed int, signed int);
unsigned int (*v10) (unsigned short, signed char, signed int, signed int) = v9;
extern signed char v11 (signed int);
extern signed char (*v12) (signed int);
extern void v13 (void);
extern void (*v14) (void);
extern unsigned int v15 (signed char);
extern unsigned int (*v16) (signed char);
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
extern unsigned short v21 (signed int, unsigned int, unsigned short);
extern unsigned short (*v22) (signed int, unsigned int, unsigned short);
signed short v23 (unsigned int, signed char);
signed short (*v24) (unsigned int, signed char) = v23;
extern unsigned int v25 (unsigned int, signed int, signed char, unsigned char);
extern unsigned int (*v26) (unsigned int, signed int, signed char, unsigned char);
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v48 = -2;
unsigned char v47 = 3;
signed char v46 = -1;

signed short v23 (unsigned int v49, signed char v50)
{
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
{
for (;;) {
signed char v53 = -2;
unsigned int v52 = 1U;
unsigned char v51 = 6;
trace++;
switch (trace)
{
case 5: 
{
unsigned short v54;
v54 = v5 ();
history[history_index++] = (int)v54;
}
break;
case 9: 
{
unsigned short v55;
v55 = v5 ();
history[history_index++] = (int)v55;
}
break;
case 11: 
return -4;
default: abort ();
}
}
}
}

unsigned int v9 (unsigned short v56, signed char v57, signed int v58, signed int v59)
{
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
{
for (;;) {
unsigned short v62 = 2;
signed short v61 = 0;
unsigned short v60 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
