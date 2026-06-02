#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
extern unsigned short v3 (unsigned int, unsigned char);
extern unsigned short (*v4) (unsigned int, unsigned char);
extern unsigned short v5 (signed short, unsigned short);
extern unsigned short (*v6) (signed short, unsigned short);
extern signed short v7 (unsigned int);
extern signed short (*v8) (unsigned int);
extern signed int v9 (signed char);
extern signed int (*v10) (signed char);
extern unsigned short v11 (signed int, unsigned char, unsigned short, signed char);
extern unsigned short (*v12) (signed int, unsigned char, unsigned short, signed char);
extern signed short v13 (unsigned char, signed short, signed char, signed short);
extern signed short (*v14) (unsigned char, signed short, signed char, signed short);
extern signed short v15 (unsigned short, signed int);
extern signed short (*v16) (unsigned short, signed int);
signed char v17 (signed int);
signed char (*v18) (signed int) = v17;
extern signed char v19 (signed int, signed int, signed char, signed int);
extern signed char (*v20) (signed int, signed int, signed char, signed int);
extern signed int v21 (void);
extern signed int (*v22) (void);
signed char v23 (signed short, unsigned int, signed char, unsigned short);
signed char (*v24) (signed short, unsigned int, signed char, unsigned short) = v23;
extern unsigned short v25 (unsigned int, unsigned char, signed char);
extern unsigned short (*v26) (unsigned int, unsigned char, signed char);
extern void v27 (signed int, unsigned short, signed char);
extern void (*v28) (signed int, unsigned short, signed char);
extern unsigned int v29 (unsigned short, signed char, signed char, signed int);
extern unsigned int (*v30) (unsigned short, signed char, signed char, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = 0;
unsigned int v32 = 3U;
signed short v31 = -4;

signed char v23 (signed short v34, unsigned int v35, signed char v36, unsigned short v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed short v40 = -4;
signed short v39 = -3;
unsigned short v38 = 1;
trace++;
switch (trace)
{
case 4: 
{
signed int v41;
signed int v42;
signed char v43;
signed int v44;
signed char v45;
v41 = 0 - 3;
v42 = 3 + -2;
v43 = v36 - -3;
v44 = -4 + -3;
v45 = v19 (v41, v42, v43, v44);
history[history_index++] = (int)v45;
}
break;
case 6: 
{
signed int v46;
signed int v47;
signed char v48;
signed int v49;
signed char v50;
v46 = -2 - -1;
v47 = -1 + 0;
v48 = 0 + 3;
v49 = -2 + 3;
v50 = v19 (v46, v47, v48, v49);
history[history_index++] = (int)v50;
}
break;
case 14: 
return v36;
default: abort ();
}
}
}
}

signed char v17 (signed int v51)
{
history[history_index++] = (int)v51;
{
for (;;) {
signed short v54 = 3;
signed int v53 = 0;
signed int v52 = -1;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v55;
signed short v56;
v55 = 5U + 2U;
v56 = v7 (v55);
history[history_index++] = (int)v56;
}
break;
case 17: 
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
signed char v59;
v59 = v1 ();
history[history_index++] = (int)v59;
}
} while (trace < 18);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
