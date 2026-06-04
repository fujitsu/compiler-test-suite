#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (unsigned short, signed char);
extern signed short (*v2) (unsigned short, signed char);
unsigned int v3 (void);
unsigned int (*v4) (void) = v3;
extern void v5 (signed short, signed short, signed short, signed int);
extern void (*v6) (signed short, signed short, signed short, signed int);
extern unsigned char v7 (signed char, signed short);
extern unsigned char (*v8) (signed char, signed short);
unsigned short v9 (unsigned int, unsigned char, unsigned int);
unsigned short (*v10) (unsigned int, unsigned char, unsigned int) = v9;
extern signed int v11 (unsigned int, signed short, signed short, unsigned int);
extern signed int (*v12) (unsigned int, signed short, signed short, unsigned int);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern unsigned short v15 (unsigned int, unsigned short, unsigned short);
extern unsigned short (*v16) (unsigned int, unsigned short, unsigned short);
extern void v17 (signed short, signed short, signed short);
extern void (*v18) (signed short, signed short, signed short);
extern unsigned char v19 (signed char, signed char, signed short);
extern unsigned char (*v20) (signed char, signed char, signed short);
extern void v21 (unsigned short);
extern void (*v22) (unsigned short);
extern void v23 (void);
extern void (*v24) (void);
extern signed char v25 (void);
extern signed char (*v26) (void);
extern unsigned int v27 (unsigned int);
extern unsigned int (*v28) (unsigned int);
unsigned short v29 (void);
unsigned short (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 7;
signed int v32 = -2;
unsigned char v31 = 3;

unsigned short v29 (void)
{
{
for (;;) {
signed char v36 = -3;
signed int v35 = -4;
unsigned char v34 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v9 (unsigned int v37, unsigned char v38, unsigned int v39)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
{
for (;;) {
unsigned short v42 = 4;
unsigned int v41 = 4U;
unsigned char v40 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v3 (void)
{
{
for (;;) {
signed short v45 = -1;
signed short v44 = 2;
unsigned int v43 = 2U;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v46;
signed short v47;
signed short v48;
unsigned int v49;
signed int v50;
v46 = 5U - v43;
v47 = 0 + v44;
v48 = v45 + -1;
v49 = v43 + v43;
v50 = v11 (v46, v47, v48, v49);
history[history_index++] = (int)v50;
}
break;
case 3: 
{
signed short v51;
signed short v52;
signed short v53;
v51 = 1 - v45;
v52 = 1 + v45;
v53 = v45 + v44;
v17 (v51, v52, v53);
}
break;
case 5: 
{
signed short v54;
signed short v55;
signed short v56;
v54 = v45 - v45;
v55 = v44 - v44;
v56 = v44 + v45;
v17 (v54, v55, v56);
}
break;
case 13: 
return v43;
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
unsigned short v59;
signed char v60;
signed short v61;
v59 = 7 - 5;
v60 = 1 - 2;
v61 = v1 (v59, v60);
history[history_index++] = (int)v61;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
