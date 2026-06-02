#include <stdlib.h>
signed char v1 (void);
signed char (*v2) (void) = v1;
void v3 (unsigned short);
void (*v4) (unsigned short) = v3;
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
signed short v7 (void);
signed short (*v8) (void) = v7;
extern unsigned char v9 (unsigned short);
extern unsigned char (*v10) (unsigned short);
extern void v11 (void);
extern void (*v12) (void);
extern void v13 (void);
extern void (*v14) (void);
extern unsigned short v17 (unsigned int, signed short, unsigned int);
extern unsigned short (*v18) (unsigned int, signed short, unsigned int);
extern unsigned char v19 (unsigned short, unsigned int, unsigned char);
extern unsigned char (*v20) (unsigned short, unsigned int, unsigned char);
extern signed short v21 (unsigned short, unsigned char);
extern signed short (*v22) (unsigned short, unsigned char);
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern signed int v25 (void);
extern signed int (*v26) (void);
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
extern void v29 (unsigned short, unsigned int, signed short);
extern void (*v30) (unsigned short, unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed int v44 = -3;
signed int v43 = 3;
signed short v42 = 1;

signed short v7 (void)
{
{
for (;;) {
signed char v47 = -1;
unsigned short v46 = 7;
unsigned char v45 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v3 (unsigned short v48)
{
history[history_index++] = (int)v48;
{
for (;;) {
unsigned short v51 = 4;
signed short v50 = 1;
unsigned short v49 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v1 (void)
{
{
for (;;) {
unsigned char v54 = 0;
signed int v53 = -3;
signed short v52 = 1;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v55;
unsigned char v56;
v55 = 6 + 4;
v56 = v9 (v55);
history[history_index++] = (int)v56;
}
break;
case 4: 
{
unsigned short v57;
unsigned int v58;
signed short v59;
v57 = 3 - 4;
v58 = 0U - 1U;
v59 = v52 + 1;
v29 (v57, v58, v59);
}
break;
case 6: 
{
unsigned short v60;
unsigned char v61;
v60 = 7 - 4;
v61 = v9 (v60);
history[history_index++] = (int)v61;
}
break;
case 8: 
{
unsigned char v62;
v62 = v5 ();
history[history_index++] = (int)v62;
}
break;
case 14: 
return -2;
default: abort ();
}
}
}
}
