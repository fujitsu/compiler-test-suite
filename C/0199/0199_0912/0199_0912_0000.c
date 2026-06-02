#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (unsigned int, signed char, unsigned char, unsigned char);
extern unsigned int (*v2) (unsigned int, signed char, unsigned char, unsigned char);
extern signed short v3 (unsigned int, unsigned int, unsigned char);
extern signed short (*v4) (unsigned int, unsigned int, unsigned char);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
unsigned short v7 (void);
unsigned short (*v8) (void) = v7;
extern signed int v9 (signed short, unsigned short, signed int);
extern signed int (*v10) (signed short, unsigned short, signed int);
extern void v11 (unsigned int, signed char, signed char, signed int);
extern void (*v12) (unsigned int, signed char, signed char, signed int);
extern signed short v13 (unsigned short, signed int, unsigned char, signed int);
extern signed short (*v14) (unsigned short, signed int, unsigned char, signed int);
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
extern unsigned int v17 (signed char, signed char, unsigned short, signed int);
extern unsigned int (*v18) (signed char, signed char, unsigned short, signed int);
extern void v19 (signed int, unsigned char, unsigned int);
extern void (*v20) (signed int, unsigned char, unsigned int);
extern signed short v21 (unsigned char);
extern signed short (*v22) (unsigned char);
extern unsigned char v23 (unsigned int, signed short, signed char);
extern unsigned char (*v24) (unsigned int, signed short, signed char);
extern unsigned char v25 (unsigned char, unsigned short, signed short, unsigned short);
extern unsigned char (*v26) (unsigned char, unsigned short, signed short, unsigned short);
extern signed int v27 (unsigned int, unsigned short, unsigned int, unsigned char);
extern signed int (*v28) (unsigned int, unsigned short, unsigned int, unsigned char);
signed char v29 (signed short);
signed char (*v30) (signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = 0;
unsigned int v32 = 5U;
unsigned short v31 = 2;

signed char v29 (signed short v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed short v37 = 2;
unsigned int v36 = 1U;
signed short v35 = -1;
trace++;
switch (trace)
{
case 1: 
{
signed short v38;
signed char v39;
v38 = -4 + v37;
v39 = v29 (v38);
history[history_index++] = (int)v39;
}
break;
case 2: 
{
signed short v40;
signed char v41;
v40 = v37 - -2;
v41 = v29 (v40);
history[history_index++] = (int)v41;
}
break;
case 3: 
{
signed short v42;
signed char v43;
v42 = v37 + v34;
v43 = v29 (v42);
history[history_index++] = (int)v43;
}
break;
case 4: 
{
signed short v44;
signed char v45;
v44 = v37 - v37;
v45 = v29 (v44);
history[history_index++] = (int)v45;
}
break;
case 5: 
{
signed short v46;
signed char v47;
v46 = v37 - v34;
v47 = v29 (v46);
history[history_index++] = (int)v47;
}
break;
case 6: 
{
signed short v48;
signed char v49;
v48 = v35 + v34;
v49 = v29 (v48);
history[history_index++] = (int)v49;
}
break;
case 7: 
{
signed short v50;
signed char v51;
v50 = -2 + v35;
v51 = v29 (v50);
history[history_index++] = (int)v51;
}
break;
case 8: 
{
signed short v52;
signed char v53;
v52 = v34 + v37;
v53 = v29 (v52);
history[history_index++] = (int)v53;
}
break;
case 9: 
{
signed short v54;
signed char v55;
v54 = v34 + v34;
v55 = v29 (v54);
history[history_index++] = (int)v55;
}
break;
case 10: 
{
signed short v56;
signed char v57;
v56 = 3 + v35;
v57 = v29 (v56);
history[history_index++] = (int)v57;
}
break;
case 11: 
return -3;
case 12: 
return -4;
case 13: 
return -3;
case 14: 
return -1;
case 15: 
return 2;
case 16: 
return -1;
case 17: 
return 0;
case 18: 
return -3;
case 19: 
return -1;
case 20: 
return -4;
case 21: 
return -1;
default: abort ();
}
}
}
}

unsigned short v7 (void)
{
{
for (;;) {
unsigned int v60 = 7U;
signed short v59 = 1;
unsigned char v58 = 4;
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
unsigned int v63;
signed char v64;
unsigned char v65;
unsigned char v66;
unsigned int v67;
v63 = v32 + v32;
v64 = 1 + 2;
v65 = 1 - 7;
v66 = 7 - 3;
v67 = v1 (v63, v64, v65, v66);
history[history_index++] = (int)v67;
}
} while (trace < 22);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
