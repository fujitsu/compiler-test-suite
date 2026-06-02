#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (unsigned char, signed int, unsigned char, unsigned short);
extern unsigned char (*v2) (unsigned char, signed int, unsigned char, unsigned short);
extern signed char v3 (unsigned int, signed int);
extern signed char (*v4) (unsigned int, signed int);
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
extern void v7 (void);
extern void (*v8) (void);
extern unsigned int v9 (void);
extern unsigned int (*v10) (void);
signed char v11 (void);
signed char (*v12) (void) = v11;
extern signed char v13 (signed int, signed char, unsigned int, unsigned char);
extern signed char (*v14) (signed int, signed char, unsigned int, unsigned char);
unsigned int v17 (unsigned char, signed short, signed char);
unsigned int (*v18) (unsigned char, signed short, signed char) = v17;
extern signed int v19 (signed short, signed short, unsigned short);
extern signed int (*v20) (signed short, signed short, unsigned short);
extern unsigned int v21 (signed short, unsigned short, unsigned char, unsigned short);
extern unsigned int (*v22) (signed short, unsigned short, unsigned char, unsigned short);
extern signed char v23 (void);
extern signed char (*v24) (void);
extern signed int v25 (signed int, signed char, unsigned int);
extern signed int (*v26) (signed int, signed char, unsigned int);
extern signed short v27 (signed char);
extern signed short (*v28) (signed char);
extern void v29 (unsigned int);
extern void (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 4;
signed int v32 = -1;
signed char v31 = 2;

unsigned int v17 (unsigned char v34, signed short v35, signed char v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned int v39 = 3U;
unsigned short v38 = 1;
signed int v37 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v11 (void)
{
{
for (;;) {
unsigned short v42 = 1;
unsigned int v41 = 6U;
unsigned short v40 = 7;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v43;
v43 = v41 - 5U;
v29 (v43);
}
break;
case 3: 
{
unsigned int v44;
v44 = v41 + v41;
v29 (v44);
}
break;
case 5: 
return -1;
case 9: 
{
unsigned int v45;
v45 = 3U - 1U;
v29 (v45);
}
break;
case 11: 
return 0;
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
unsigned char v48;
signed int v49;
unsigned char v50;
unsigned short v51;
unsigned char v52;
v48 = 5 + 7;
v49 = -1 - v32;
v50 = 1 + 2;
v51 = v33 - 4;
v52 = v1 (v48, v49, v50, v51);
history[history_index++] = (int)v52;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
