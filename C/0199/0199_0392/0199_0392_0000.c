#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (signed short, unsigned int, unsigned char);
extern signed int (*v2) (signed short, unsigned int, unsigned char);
extern void v3 (signed short, unsigned int, signed char);
extern void (*v4) (signed short, unsigned int, signed char);
extern unsigned char v7 (signed char, signed short, unsigned int, signed char);
extern unsigned char (*v8) (signed char, signed short, unsigned int, signed char);
extern unsigned short v9 (signed short, unsigned int, unsigned int);
extern unsigned short (*v10) (signed short, unsigned int, unsigned int);
unsigned char v11 (unsigned int, signed int);
unsigned char (*v12) (unsigned int, signed int) = v11;
extern unsigned int v13 (signed int, signed char);
extern unsigned int (*v14) (signed int, signed char);
extern signed short v15 (void);
extern signed short (*v16) (void);
extern signed short v17 (void);
extern signed short (*v18) (void);
extern signed int v19 (signed short, signed int, signed int, unsigned short);
extern signed int (*v20) (signed short, signed int, signed int, unsigned short);
extern unsigned int v21 (signed short, signed short);
extern unsigned int (*v22) (signed short, signed short);
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
unsigned char v25 (unsigned int);
unsigned char (*v26) (unsigned int) = v25;
unsigned int v27 (unsigned int, unsigned char);
unsigned int (*v28) (unsigned int, unsigned char) = v27;
extern unsigned int v29 (unsigned char, unsigned char, signed int);
extern unsigned int (*v30) (unsigned char, unsigned char, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 4;
unsigned short v32 = 5;
signed short v31 = -1;

unsigned int v27 (unsigned int v34, unsigned char v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned int v38 = 4U;
signed int v37 = -1;
unsigned int v36 = 2U;
trace++;
switch (trace)
{
case 1: 
{
unsigned char v39;
unsigned char v40;
signed int v41;
unsigned int v42;
v39 = 4 + v35;
v40 = v35 + v35;
v41 = v37 + 1;
v42 = v29 (v39, v40, v41);
history[history_index++] = (int)v42;
}
break;
case 3: 
return v34;
case 10: 
{
unsigned char v43;
unsigned char v44;
signed int v45;
unsigned int v46;
v43 = v35 - v35;
v44 = v35 + v35;
v45 = 0 + v37;
v46 = v29 (v43, v44, v45);
history[history_index++] = (int)v46;
}
break;
case 12: 
return v38;
default: abort ();
}
}
}
}

unsigned char v25 (unsigned int v47)
{
history[history_index++] = (int)v47;
{
for (;;) {
unsigned int v50 = 6U;
signed short v49 = 0;
signed int v48 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v11 (unsigned int v51, signed int v52)
{
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
{
for (;;) {
signed short v55 = 3;
signed char v54 = -2;
signed short v53 = -3;
trace++;
switch (trace)
{
case 7: 
{
signed short v56;
v56 = v15 ();
history[history_index++] = (int)v56;
}
break;
case 15: 
return 3;
default: abort ();
}
}
}
}

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
signed short v59;
unsigned int v60;
unsigned char v61;
signed int v62;
v59 = 0 - v31;
v60 = 2U - 6U;
v61 = 7 - 5;
v62 = v1 (v59, v60, v61);
history[history_index++] = (int)v62;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
