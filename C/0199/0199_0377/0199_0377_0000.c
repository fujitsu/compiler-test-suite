#include <stdio.h>
#include <stdlib.h>
static signed short v1 (signed short, unsigned short, unsigned int, unsigned short);
static signed short (*v2) (signed short, unsigned short, unsigned int, unsigned short) = v1;
extern unsigned short v3 (void);
extern unsigned short (*v4) (void);
extern unsigned int v5 (unsigned short, unsigned char, unsigned short, signed short);
extern unsigned int (*v6) (unsigned short, unsigned char, unsigned short, signed short);
extern signed short v7 (signed char, unsigned short);
extern signed short (*v8) (signed char, unsigned short);
extern signed short v9 (void);
extern signed short (*v10) (void);
extern unsigned char v11 (unsigned char, unsigned int, unsigned char, unsigned int);
extern unsigned char (*v12) (unsigned char, unsigned int, unsigned char, unsigned int);
extern unsigned int v13 (unsigned short, signed char);
extern unsigned int (*v14) (unsigned short, signed char);
unsigned char v17 (signed int, unsigned char);
unsigned char (*v18) (signed int, unsigned char) = v17;
extern signed short v19 (signed short, signed int, unsigned int, signed int);
extern signed short (*v20) (signed short, signed int, unsigned int, signed int);
extern signed char v21 (unsigned short, signed int, unsigned char, signed short);
extern signed char (*v22) (unsigned short, signed int, unsigned char, signed short);
extern signed short v23 (signed short);
extern signed short (*v24) (signed short);
extern unsigned short v25 (signed int, unsigned char);
extern unsigned short (*v26) (signed int, unsigned char);
extern signed short v27 (signed int, signed int, signed short, signed char);
extern signed short (*v28) (signed int, signed int, signed short, signed char);
extern signed char v29 (signed int, signed int, signed short);
extern signed char (*v30) (signed int, signed int, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 7;
unsigned char v32 = 4;
signed int v31 = 0;

unsigned char v17 (signed int v34, unsigned char v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed short v38 = 2;
unsigned short v37 = 1;
unsigned int v36 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed short v1 (signed short v39, unsigned short v40, unsigned int v41, unsigned short v42)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
unsigned int v45 = 2U;
unsigned int v44 = 3U;
unsigned short v43 = 3;
trace++;
switch (trace)
{
case 0: 
{
signed int v46;
signed int v47;
signed short v48;
signed char v49;
v46 = -2 - 0;
v47 = 2 + 2;
v48 = -4 - 2;
v49 = v29 (v46, v47, v48);
history[history_index++] = (int)v49;
}
break;
case 2: 
{
signed short v50;
signed short v51;
v50 = 2 + 2;
v51 = v23 (v50);
history[history_index++] = (int)v51;
}
break;
case 4: 
{
unsigned short v52;
signed char v53;
unsigned int v54;
v52 = v40 - v42;
v53 = -4 - 0;
v54 = v13 (v52, v53);
history[history_index++] = (int)v54;
}
break;
case 14: 
return v39;
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
unsigned short v58;
unsigned int v59;
unsigned short v60;
signed short v61;
v57 = 2 - 1;
v58 = 5 + 6;
v59 = 1U - 7U;
v60 = 5 + 5;
v61 = v1 (v57, v58, v59, v60);
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
