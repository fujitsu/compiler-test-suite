#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (signed short, signed int);
extern signed short (*v2) (signed short, signed int);
extern unsigned short v3 (unsigned int, unsigned short);
extern unsigned short (*v4) (unsigned int, unsigned short);
signed short v5 (unsigned short, signed char);
signed short (*v6) (unsigned short, signed char) = v5;
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern signed short v9 (signed int, unsigned short, signed char, unsigned short);
extern signed short (*v10) (signed int, unsigned short, signed char, unsigned short);
extern unsigned int v11 (signed short, signed short);
extern unsigned int (*v12) (signed short, signed short);
extern unsigned char v13 (unsigned short, signed char, unsigned char, signed char);
extern unsigned char (*v14) (unsigned short, signed char, unsigned char, signed char);
extern unsigned int v15 (signed int);
extern unsigned int (*v16) (signed int);
extern unsigned short v17 (unsigned short);
extern unsigned short (*v18) (unsigned short);
extern signed char v19 (void);
extern signed char (*v20) (void);
extern signed char v21 (unsigned char, unsigned char, signed short, signed short);
extern signed char (*v22) (unsigned char, unsigned char, signed short, signed short);
extern void v23 (unsigned short, signed int, signed int, unsigned short);
extern void (*v24) (unsigned short, signed int, signed int, unsigned short);
extern signed char v25 (unsigned char, signed int, unsigned int);
extern signed char (*v26) (unsigned char, signed int, unsigned int);
signed short v27 (signed char, unsigned char, unsigned int);
signed short (*v28) (signed char, unsigned char, unsigned int) = v27;
extern unsigned int v29 (unsigned short, unsigned char);
extern unsigned int (*v30) (unsigned short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -1;
signed int v32 = 3;
unsigned char v31 = 6;

signed short v27 (signed char v34, unsigned char v35, unsigned int v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed char v39 = 0;
unsigned int v38 = 4U;
signed int v37 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (unsigned short v40, signed char v41)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
signed char v44 = -4;
unsigned short v43 = 3;
signed int v42 = 1;
trace++;
switch (trace)
{
case 3: 
{
signed short v45;
signed short v46;
unsigned int v47;
v45 = -2 - 0;
v46 = 3 - 2;
v47 = v11 (v45, v46);
history[history_index++] = (int)v47;
}
break;
case 7: 
{
unsigned char v48;
signed int v49;
unsigned int v50;
signed char v51;
v48 = 7 - 6;
v49 = 3 + 0;
v50 = 7U - 5U;
v51 = v25 (v48, v49, v50);
history[history_index++] = (int)v51;
}
break;
case 11: 
return -4;
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
signed short v54;
signed int v55;
signed short v56;
v54 = v33 + -3;
v55 = 1 - v32;
v56 = v1 (v54, v55);
history[history_index++] = (int)v56;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
