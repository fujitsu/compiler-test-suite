#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
extern signed int v3 (unsigned char, unsigned char, signed int);
extern signed int (*v4) (unsigned char, unsigned char, signed int);
extern signed char v5 (unsigned short);
extern signed char (*v6) (unsigned short);
unsigned char v7 (unsigned char, signed short);
unsigned char (*v8) (unsigned char, signed short) = v7;
extern unsigned char v9 (unsigned char, unsigned char, unsigned int);
extern unsigned char (*v10) (unsigned char, unsigned char, unsigned int);
extern void v11 (unsigned short);
extern void (*v12) (unsigned short);
extern void v13 (signed int, unsigned int, signed int);
extern void (*v14) (signed int, unsigned int, signed int);
extern unsigned char v15 (signed char, unsigned char, unsigned int, unsigned short);
extern unsigned char (*v16) (signed char, unsigned char, unsigned int, unsigned short);
extern signed int v17 (signed char, unsigned short, signed int, unsigned int);
extern signed int (*v18) (signed char, unsigned short, signed int, unsigned int);
extern unsigned short v19 (unsigned short, signed char, signed char, unsigned char);
extern unsigned short (*v20) (unsigned short, signed char, signed char, unsigned char);
extern void v21 (void);
extern void (*v22) (void);
extern signed char v25 (signed short, unsigned short, signed short);
extern signed char (*v26) (signed short, unsigned short, signed short);
signed char v27 (unsigned char, signed short);
signed char (*v28) (unsigned char, signed short) = v27;
extern signed char v29 (unsigned int, signed int, unsigned int);
extern signed char (*v30) (unsigned int, signed int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 1;
unsigned char v32 = 0;
unsigned short v31 = 3;

signed char v27 (unsigned char v34, signed short v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed int v38 = 0;
unsigned char v37 = 7;
unsigned int v36 = 0U;
trace++;
switch (trace)
{
case 5: 
{
unsigned int v39;
signed int v40;
unsigned int v41;
signed char v42;
v39 = 5U - v36;
v40 = -3 - -1;
v41 = v36 + 4U;
v42 = v29 (v39, v40, v41);
history[history_index++] = (int)v42;
}
break;
case 7: 
{
unsigned int v43;
signed int v44;
unsigned int v45;
signed char v46;
v43 = 4U - v36;
v44 = -2 - 2;
v45 = 5U - v36;
v46 = v29 (v43, v44, v45);
history[history_index++] = (int)v46;
}
break;
case 9: 
{
unsigned int v47;
signed int v48;
unsigned int v49;
signed char v50;
v47 = 1U + v36;
v48 = -3 + v38;
v49 = v36 - 2U;
v50 = v29 (v47, v48, v49);
history[history_index++] = (int)v50;
}
break;
case 11: 
return -3;
default: abort ();
}
}
}
}

unsigned char v7 (unsigned char v51, signed short v52)
{
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
{
for (;;) {
signed short v55 = 0;
signed int v54 = -2;
unsigned int v53 = 2U;
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
unsigned char v58;
v58 = v1 ();
history[history_index++] = (int)v58;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
