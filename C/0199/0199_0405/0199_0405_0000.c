#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (signed int, unsigned int, signed short);
extern unsigned short (*v2) (signed int, unsigned int, signed short);
extern signed int v3 (void);
extern signed int (*v4) (void);
extern unsigned int v5 (signed int);
extern unsigned int (*v6) (signed int);
extern signed short v7 (unsigned short, unsigned short, signed char, signed int);
extern signed short (*v8) (unsigned short, unsigned short, signed char, signed int);
extern void v9 (signed char);
extern void (*v10) (signed char);
extern signed char v11 (unsigned short, unsigned int, unsigned char);
extern signed char (*v12) (unsigned short, unsigned int, unsigned char);
signed short v13 (unsigned short, signed int, signed short);
signed short (*v14) (unsigned short, signed int, signed short) = v13;
extern unsigned char v15 (signed int, unsigned int);
extern unsigned char (*v16) (signed int, unsigned int);
extern unsigned char v17 (unsigned int, unsigned int);
extern unsigned char (*v18) (unsigned int, unsigned int);
signed short v19 (unsigned int, unsigned char);
signed short (*v20) (unsigned int, unsigned char) = v19;
extern unsigned short v21 (signed int, signed char, signed char);
extern unsigned short (*v22) (signed int, signed char, signed char);
extern signed char v23 (unsigned short);
extern signed char (*v24) (unsigned short);
extern unsigned char v25 (signed short, unsigned int, unsigned short, unsigned short);
extern unsigned char (*v26) (signed short, unsigned int, unsigned short, unsigned short);
extern signed int v27 (unsigned char, signed char, unsigned short, unsigned char);
extern signed int (*v28) (unsigned char, signed char, unsigned short, unsigned char);
extern unsigned int v29 (signed int, unsigned short, unsigned char, unsigned int);
extern unsigned int (*v30) (signed int, unsigned short, unsigned char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 5U;
signed int v32 = -2;
unsigned short v31 = 1;

signed short v19 (unsigned int v34, unsigned char v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed char v38 = -3;
signed int v37 = 0;
signed int v36 = 0;
trace++;
switch (trace)
{
case 3: 
{
unsigned short v39;
unsigned int v40;
unsigned char v41;
signed char v42;
v39 = 2 + 0;
v40 = v34 + 3U;
v41 = v35 + 7;
v42 = v11 (v39, v40, v41);
history[history_index++] = (int)v42;
}
break;
case 9: 
{
unsigned short v43;
unsigned int v44;
unsigned char v45;
signed char v46;
v43 = 5 + 6;
v44 = v34 - v34;
v45 = v35 - 3;
v46 = v11 (v43, v44, v45);
history[history_index++] = (int)v46;
}
break;
case 11: 
return 3;
case 13: 
return -3;
default: abort ();
}
}
}
}

signed short v13 (unsigned short v47, signed int v48, signed short v49)
{
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
{
for (;;) {
signed char v52 = -4;
signed short v51 = 0;
unsigned short v50 = 1;
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
signed int v55;
unsigned int v56;
signed short v57;
unsigned short v58;
v55 = -2 + v32;
v56 = 3U - 3U;
v57 = -4 - 1;
v58 = v1 (v55, v56, v57);
history[history_index++] = (int)v58;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
