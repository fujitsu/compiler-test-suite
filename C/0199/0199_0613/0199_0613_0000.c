#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
extern void v3 (unsigned char, signed int, signed int);
extern void (*v4) (unsigned char, signed int, signed int);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern signed short v7 (void);
extern signed short (*v8) (void);
signed short v9 (void);
signed short (*v10) (void) = v9;
extern signed short v11 (void);
extern signed short (*v12) (void);
unsigned int v13 (unsigned char, unsigned char, unsigned short);
unsigned int (*v14) (unsigned char, unsigned char, unsigned short) = v13;
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern signed int v17 (unsigned short, signed short);
extern signed int (*v18) (unsigned short, signed short);
extern signed short v19 (signed short, unsigned short, signed short);
extern signed short (*v20) (signed short, unsigned short, signed short);
extern unsigned int v21 (signed char, signed short, signed char);
extern unsigned int (*v22) (signed char, signed short, signed char);
extern unsigned short v23 (signed short);
extern unsigned short (*v24) (signed short);
extern signed short v25 (unsigned int, unsigned char, unsigned char, unsigned int);
extern signed short (*v26) (unsigned int, unsigned char, unsigned char, unsigned int);
extern void v27 (unsigned short, signed short, signed char, unsigned char);
extern void (*v28) (unsigned short, signed short, signed char, unsigned char);
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = 1;
unsigned short v32 = 3;
signed char v31 = -2;

unsigned int v13 (unsigned char v34, unsigned char v35, unsigned short v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned short v39 = 6;
unsigned short v38 = 6;
signed char v37 = -3;
trace++;
switch (trace)
{
case 5: 
{
unsigned short v40;
signed short v41;
signed char v42;
unsigned char v43;
v40 = v38 - v38;
v41 = 3 + -1;
v42 = v37 + v37;
v43 = v35 - v34;
v27 (v40, v41, v42, v43);
}
break;
case 7: 
{
unsigned short v44;
signed short v45;
signed char v46;
unsigned char v47;
v44 = 2 + v39;
v45 = 1 + -2;
v46 = v37 - -4;
v47 = v35 - v34;
v27 (v44, v45, v46, v47);
}
break;
case 9: 
{
unsigned short v48;
signed short v49;
signed char v50;
unsigned char v51;
v48 = v38 + 1;
v49 = 2 + 1;
v50 = v37 - v37;
v51 = v34 + v34;
v27 (v48, v49, v50, v51);
}
break;
case 11: 
return 4U;
default: abort ();
}
}
}
}

signed short v9 (void)
{
{
for (;;) {
unsigned char v54 = 1;
unsigned short v53 = 5;
unsigned short v52 = 4;
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
signed short v57;
v57 = v1 ();
history[history_index++] = (int)v57;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
