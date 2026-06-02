#include <stdlib.h>
extern unsigned short v1 (unsigned int);
extern unsigned short (*v2) (unsigned int);
void v3 (void);
void (*v4) (void) = v3;
extern unsigned char v5 (unsigned int);
extern unsigned char (*v6) (unsigned int);
extern unsigned short v7 (signed short, unsigned short, signed short);
extern unsigned short (*v8) (signed short, unsigned short, signed short);
extern void v9 (signed char, signed char);
extern void (*v10) (signed char, signed char);
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
extern signed short v13 (unsigned char, signed int);
extern signed short (*v14) (unsigned char, signed int);
extern signed char v15 (unsigned short, signed short, signed short);
extern signed char (*v16) (unsigned short, signed short, signed short);
signed int v17 (unsigned char);
signed int (*v18) (unsigned char) = v17;
extern unsigned char v19 (signed int, unsigned short);
extern unsigned char (*v20) (signed int, unsigned short);
extern void v21 (signed char, signed int);
extern void (*v22) (signed char, signed int);
extern unsigned short v23 (unsigned short);
extern unsigned short (*v24) (unsigned short);
unsigned short v25 (signed int, signed int, signed short);
unsigned short (*v26) (signed int, signed int, signed short) = v25;
extern signed int v27 (signed int, unsigned short, unsigned int);
extern signed int (*v28) (signed int, unsigned short, unsigned int);
extern unsigned short v29 (signed char, signed short, signed char, signed int);
extern unsigned short (*v30) (signed char, signed short, signed char, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v45 = 1;
unsigned char v44 = 6;
signed char v43 = 0;

unsigned short v25 (signed int v46, signed int v47, signed short v48)
{
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
{
for (;;) {
unsigned int v51 = 0U;
unsigned short v50 = 1;
unsigned int v49 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v17 (unsigned char v52)
{
history[history_index++] = (int)v52;
{
for (;;) {
unsigned short v55 = 2;
unsigned char v54 = 4;
signed short v53 = 3;
trace++;
switch (trace)
{
case 1: 
{
signed int v56;
unsigned short v57;
unsigned int v58;
signed int v59;
v56 = -3 + 2;
v57 = 1 + 1;
v58 = 4U - 6U;
v59 = v27 (v56, v57, v58);
history[history_index++] = (int)v59;
}
break;
case 3: 
return 1;
default: abort ();
}
}
}
}

void v3 (void)
{
{
for (;;) {
unsigned int v62 = 1U;
signed char v61 = -3;
signed char v60 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
