#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (unsigned short, unsigned int);
extern signed int (*v2) (unsigned short, unsigned int);
extern signed char v3 (unsigned char);
extern signed char (*v4) (unsigned char);
extern signed char v5 (void);
extern signed char (*v6) (void);
extern unsigned char v7 (unsigned short, signed int);
extern unsigned char (*v8) (unsigned short, signed int);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern unsigned short v11 (unsigned int, unsigned short, unsigned short, signed int);
extern unsigned short (*v12) (unsigned int, unsigned short, unsigned short, signed int);
extern unsigned char v13 (signed short, unsigned char);
extern unsigned char (*v14) (signed short, unsigned char);
unsigned int v15 (void);
unsigned int (*v16) (void) = v15;
extern unsigned int v17 (unsigned short, signed int);
extern unsigned int (*v18) (unsigned short, signed int);
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern void v21 (unsigned int, unsigned short, signed short, signed char);
extern void (*v22) (unsigned int, unsigned short, signed short, signed char);
signed int v23 (unsigned int);
signed int (*v24) (unsigned int) = v23;
extern unsigned int v25 (signed short, unsigned char);
extern unsigned int (*v26) (signed short, unsigned char);
extern signed int v27 (signed int, signed char, signed short);
extern signed int (*v28) (signed int, signed char, signed short);
signed char v29 (signed int, unsigned char, unsigned char);
signed char (*v30) (signed int, unsigned char, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -1;
signed char v32 = 3;
signed char v31 = -4;

signed char v29 (signed int v34, unsigned char v35, unsigned char v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned char v39 = 0;
signed char v38 = -4;
unsigned char v37 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v23 (unsigned int v40)
{
history[history_index++] = (int)v40;
{
for (;;) {
signed int v43 = 0;
unsigned char v42 = 5;
unsigned char v41 = 4;
trace++;
switch (trace)
{
case 3: 
return v43;
case 5: 
{
signed short v44;
unsigned char v45;
unsigned int v46;
v44 = -1 - 0;
v45 = v42 - 2;
v46 = v25 (v44, v45);
history[history_index++] = (int)v46;
}
break;
case 7: 
{
signed short v47;
unsigned char v48;
unsigned int v49;
v47 = 3 - 0;
v48 = 5 - 0;
v49 = v25 (v47, v48);
history[history_index++] = (int)v49;
}
break;
case 9: 
{
signed short v50;
unsigned char v51;
unsigned int v52;
v50 = -3 + -3;
v51 = 2 - v42;
v52 = v25 (v50, v51);
history[history_index++] = (int)v52;
}
break;
case 11: 
return -1;
default: abort ();
}
}
}
}

unsigned int v15 (void)
{
{
for (;;) {
signed short v55 = 2;
unsigned int v54 = 1U;
unsigned int v53 = 5U;
trace++;
switch (trace)
{
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
unsigned short v58;
unsigned int v59;
signed int v60;
v58 = 3 - 2;
v59 = 1U + 6U;
v60 = v1 (v58, v59);
history[history_index++] = (int)v60;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
