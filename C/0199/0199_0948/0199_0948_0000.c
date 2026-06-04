#include <stdio.h>
#include <stdlib.h>
static signed short v1 (signed char, signed short, unsigned short, unsigned short);
static signed short (*v2) (signed char, signed short, unsigned short, unsigned short) = v1;
extern unsigned short v3 (unsigned int, unsigned char, signed short);
extern unsigned short (*v4) (unsigned int, unsigned char, signed short);
extern unsigned int v5 (signed char, signed int);
extern unsigned int (*v6) (signed char, signed int);
extern void v7 (signed char);
extern void (*v8) (signed char);
signed short v9 (signed char, signed short, unsigned int, unsigned char);
signed short (*v10) (signed char, signed short, unsigned int, unsigned char) = v9;
extern signed short v11 (void);
extern signed short (*v12) (void);
extern signed int v13 (signed short);
extern signed int (*v14) (signed short);
extern unsigned short v15 (unsigned char, signed int, signed short, signed int);
extern unsigned short (*v16) (unsigned char, signed int, signed short, signed int);
extern signed short v17 (unsigned short);
extern signed short (*v18) (unsigned short);
extern signed int v19 (unsigned char, signed char, signed int);
extern signed int (*v20) (unsigned char, signed char, signed int);
extern unsigned char v21 (unsigned short, signed int, unsigned char, signed short);
extern unsigned char (*v22) (unsigned short, signed int, unsigned char, signed short);
extern signed char v23 (void);
extern signed char (*v24) (void);
extern signed char v25 (void);
extern signed char (*v26) (void);
extern unsigned char v27 (unsigned short, unsigned short, signed short);
extern unsigned char (*v28) (unsigned short, unsigned short, signed short);
extern unsigned int v29 (signed int, signed char, unsigned int, signed int);
extern unsigned int (*v30) (signed int, signed char, unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 3;
unsigned char v32 = 7;
signed char v31 = -2;

signed short v9 (signed char v34, signed short v35, unsigned int v36, unsigned char v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed int v40 = -1;
unsigned int v39 = 5U;
signed char v38 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed short v1 (signed char v41, signed short v42, unsigned short v43, unsigned short v44)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
{
for (;;) {
signed short v47 = -4;
signed int v46 = -1;
unsigned int v45 = 2U;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v48;
signed char v49;
signed int v50;
signed int v51;
v48 = 4 + 2;
v49 = 3 + v41;
v50 = v46 + 2;
v51 = v19 (v48, v49, v50);
history[history_index++] = (int)v51;
}
break;
case 6: 
{
signed short v52;
signed int v53;
v52 = v47 + 1;
v53 = v13 (v52);
history[history_index++] = (int)v53;
}
break;
case 12: 
return v42;
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
signed char v56;
signed short v57;
unsigned short v58;
unsigned short v59;
signed short v60;
v56 = v31 - -1;
v57 = 3 - 1;
v58 = 1 + v33;
v59 = v33 - v33;
v60 = v1 (v56, v57, v58, v59);
history[history_index++] = (int)v60;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
